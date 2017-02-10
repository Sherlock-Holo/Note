madeye推出了AEAD加密:[github](https://github.com/shadowsocks/shadowsocks-libev/releases/tag/v3.0.0)
现在给上madeye给的[bandwidth](https://gist.github.com/madeye/c046fc35e10a82154f4697fb316a7ac6)测试代码做出的测试效果

## aes-256-cfb

> Server listening on TCP port 8388

> TCP window size: 85.3 KByte (default)

> Client connecting to 127.0.0.1, TCP port 8387

> TCP window size: 3.76 MByte (default)

> [3] local 127.0.0.1 port 40106 connected with 127.0.0.1 port 8387

> [4] local 127.0.0.1 port 8388 connected with 127.0.0.1 port 54382

> [ID] Interval       Transfer     Bandwidth

> [3]  0.0-10.0 sec  1.55 GBytes  1.33 Gbits/sec

> Test Finished

> [ID] Interval       Transfer     Bandwidth

> [4]  0.0-10.0 sec  1.53 GBytes  1.31 Gbits/sec

## aes-256-gcm

> Server listening on TCP port 8388

> TCP window size: 85.3 KByte (default)

> Client connecting to 127.0.0.1, TCP port 8387

> TCP window size: 3.76 MByte (default)

> [3] local 127.0.0.1 port 40154 connected with 127.0.0.1 port 8387

> [4] local 127.0.0.1 port 8388 connected with 127.0.0.1 port 54430

> [ID] Interval       Transfer     Bandwidth

> [3]  0.0-10.0 sec   986 MBytes   827 Mbits/sec

> Test Finished

> [ID] Interval       Transfer     Bandwidth

> [4]  0.0-10.0 sec   971 MBytes   813 Mbits/sec

## chacha20-ietf

> Server listening on TCP port 8388

> TCP window size: 85.3 KByte (default)

> Client connecting to 127.0.0.1, TCP port 8387

> TCP window size: 3.76 MByte (default)

> [3] local 127.0.0.1 port 40224 connected with 127.0.0.1 port 8387

> [4] local 127.0.0.1 port 8388 connected with 127.0.0.1 port 54500

> [ID] Interval       Transfer     Bandwidth

> [3]  0.0-10.0 sec  2.33 GBytes  2.00 Gbits/sec

> Test Finished

> [ID] Interval       Transfer     Bandwidth

> [4]  0.0-10.0 sec  2.32 GBytes  1.99 Gbits/sec

## chacha20


> Server listening on TCP port 8388

> TCP window size: 85.3 KByte (default)

> Client connecting to 127.0.0.1, TCP port 8387

> TCP window size: 3.76 MByte (default)

> [3] local 127.0.0.1 port 40698 connected with 127.0.0.1 port 8387

> [4] local 127.0.0.1 port 8388 connected with 127.0.0.1 port 54974

> [ID] Interval       Transfer     Bandwidth

> [3]  0.0-10.0 sec  2.30 GBytes  1.97 Gbits/sec

> Test Finished


> [ID] Interval       Transfer     Bandwidth

> [4]  0.0-10.0 sec  2.29 GBytes  1.96 Gbits/sec

## chacha20-ietf-poly1305

> Server listening on TCP port 8388

> CP window size: 85.3 KByte (default)

> [4] local 127.0.0.1 port 8388 connected with 127.0.0.1 port 55372

> Client connecting to 127.0.0.1, TCP port 8387

> TCP window size: 3.76 MByte (default)

> [3] local 127.0.0.1 port 41096 connected with 127.0.0.1 port 8387

> [ID] Interval       Transfer     Bandwidth


> [3]  0.0-10.0 sec  1.55 GBytes  1.33 Gbits/sec

> Test Finished

> [ID] Interval       Transfer     Bandwidth

> [4]  0.0-10.0 sec  1.54 GBytes  1.32 Gbits/sec

![](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)

本作品采用[知识共享署名-非商业性使用-相同方式共享 4.0 国际许可协议](http://creativecommons.org/licenses/by-nc-sa/4.0/)进行许可。
