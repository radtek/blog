# upgrading

**作者**

chrisx

**日期**

2021-05-27

**内容**

数据库升级

ref [Upgrading a PostgreSQL Cluster](https://www.postgresql.org/docs/13/upgrading.html)

----

[toc]

## 升级概述

次要发行从来不改变内部存储格式并且总是向前并向后兼容同一主版本号中的次要发行。 例如版本10.1与版本10.0和版本10.6兼容。类似的，例如9.5.3与9.5.0、9.5.1和9.5.6兼容。 要在兼容的版本间升级，你只需要简单地在服务器关闭时替换可执行文件并重启服务器。 数据目录则保持不变 — 次要升级就这么简单。

对于PostgreSQL的主发行， 内部数据存储格式常被改变，这使升级复杂化。传统的把数据移动到 新主版本的方法是先转储然后重新载入到数据库，不过这可能会很慢。 一种更快的方式是pg_upgrade。如下文所讨论的， 复制方法也能被用于升级。
新的主版本也通常会引入一些用户可见的不兼容性，因此可能需要应用程序编程上的改变。所有用户可见的更改都被列在发行注记（附录 E）中，请特别注意标有 "Migration" 的小节。如果你正在跨越几个主版本升级，一定要阅读每个中间版本的发行注记。
小心的用户在完全切换过去之前将希望在新版本上测试他们的客户端应用。因此，建立一个新旧版本的并存安装通常是一个好主意。

**主板本不再受支持情况下建议升级主板本**
**始终建议您使用可用的最新次要版本** ref [pg_security_infomation](./pg_security_Information.md)
虽然升级总是会包含一定程度的风险，但PostgreSQL次要版本只修复了经常遇到的bug、安全问题和数据损坏问题，以降低与升级相关的风险。对于小版本，社区认为不升级比升级风险更大。

## 次要版本升级

次要版本升级，pg131>pg133

次要版本通常不需要转储和恢复；您可以停止数据库服务器，安装更新的二进制文件，然后重新启动数据库。

1. 安装新版本软件（软件目录位于新的位置，与其旧的软件目录区别开）
2. 停止数据库
3. 修改环境变量，（环境变量指向新版本软件目录）
4. 启动数据库，使用新版本软件加载原来的data
5. 数据验证

:warning: 非内核扩展插件需要重新安装。
:warning: 升级前做好备份

## 主版本升级

### Upgrading Data via pg_dumpall

### Upgrading Data via pg_upgrade

ref [pg_upgrade](./pg_upgrade.md)

### Upgrading Data via Replication
