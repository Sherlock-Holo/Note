# 前言

本文是根据网上一大堆教程和结合了[RASPBERRY PI SAMBA SHARE IN 5 MINUTES](http://projpi.com/diy-home-projects-with-a-raspberry-pi/raspberry-pi-samba-share-in-5-minutes/)。为什么不写其他教程的地址呢？第一：他们都没让咱的samba安装成功；第二：太多了都不记得是哪个了。。。

# 安装

首先得更新系统吧，咱有个习惯就是安装东西之前更新一下系统。那么在树莓派之下就是：

```
sudo apt-get update
sudo apt-get dist-upgrade
```

这里不推荐使用apt，因为咱开启了自动补全但是apt没有反应所以觉得可能apt在树莓派上可能有问题。。。吧～～
那么，就下载安装吧～～

```
apt-get install samba samba-common-bin
```

然后去喝杯咖啡，等待安装。

# 配置

有很多人都教咱，配置文件修改前要备份，程序不确定的最好不要卸载，禁用算了～所以备份配置文件吧:

```
sudo cp /etc/samba/smb.conf /etc/samba/smbconf.bak
```

创建samba使用的目录，专门划分一个目录给他方便管理。咱把他创建在根目录。

```
cd /
sudo mkdir samba
cd samba
sudo mkdir public
sudo mkdir Holo-Share
sudo chmod 777 -R samba
```

设置为777权限是为了不会出现什么奇怪的问题，而为什么使用递归呢？因为咱创建了其他子目录，如果进去一个个来咱可不太喜欢。
那么接下来修改配置文件了:

> Inside nano, navigate to the section [global], under workgroup = WORKGROUP, add the following line

是不是晕了？没关系，咱会翻译成实际操作哒～～
找到[global]这里，在workgroup的下面加入

`netbios name = HOBBIT`

> Under Share definitions, to create a Share for user Pi, Enter the following :

就是在Share definitions下面加入:

```
[Holo-share]
path = /samba/Holo-Share
comment = Pi's Share Folder
valid users = pi
read only = No
create mask = 0777
directory mask = 0777
```

看了上面英文[RASPBERRY PI SAMBA SHARE IN 5 MINUTES](http://projpi.com/diy-home-projects-with-a-raspberry-pi/raspberry-pi-samba-share-in-5-minutes/)会想为什么有点出入呢？当然啦咱要有自己的风格嘛～～～
设置完私人目录后，建议设置一个公共目录出来让大家一起共享。

```
[PublicShare]
path = /samba/public
comment = Public Share Folder
public = yes
#guest ok = yes
read only = No
writable = yes
create mask = 0777
directory mask = 0777
```

这是咱自己的配置，跟教程的有点出入，用教程的

> ```
> [PublicShare]
> path = /mnt/hdd/publicshare
> comment = Public Share Folder
> guest ok = yes
> read only = No
> create mask = 0777
> directory mask = 0777
> ```

第一次成功使用，但是不知道为什么第二次进去时出现各种蜜汁错误，所以修改了一下，到现在都没事正常运行～～～
设置调好后，因为samba使用的帐号管理是自己有一套的，那么私人目录那里需要添加帐号：

` sudo smbpasswd -a pi `

然后输入密码。

# 启动samba

设置完后，就可以启动了。

` sudo service samba restart `

为什么用重启呢？鬼知道～～～所有人都这么干～～～

# 使用

那么，就在windows下的资源管理器那里输入

` \\x.x.x.x `

就可以进去了。

###### 小提示：进去一个目录后，复制路径，然后添加网络位置，填进去，选择一个盘符给他。这样就可以在计算机里面直接看到他，不需要每次都输入地址了。

# 后言

希望自己的教程能够帮到想安装samba的人类吧～～～

![](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)

本作品采用[知识共享署名-非商业性使用-相同方式共享 4.0 国际许可协议](http://creativecommons.org/licenses/by-nc-sa/4.0/)进行许可。
