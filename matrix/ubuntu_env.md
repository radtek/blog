# ubuntu_env

**作者**

Chrisx

**日期**

2021-12-22

**内容**

使用multipass，并配置ubuntu办公环境

ref[multipass](https://multipass.run/)

----

[toc]

## multipass

```sh
multipass find
multipass launch -c 8 --d 50G --mem 8G --n u1 21.10
multipass mount c:\data\ubuntu u1:/c
```

## ubuntu apt升级

终端执行：

```sh
sudo apt update
sudo apt upgrade
sudo shutdown -r now
```

如果报错：
E: The repository 'http://archive.ubuntu.com/ubuntu focal-backports Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.

更换国内软件源[ubuntu_source](./ubuntu_source.md)

## apt-get 查询软件包

```sh
dpkg -l |grep post
dpkg -l                             // 列出已安装的所有软件包
dpkg-query -l
apt-cache search PackageName        // 搜索软件包
apt-cache show PackageName          // 获取软件包的相关信息, 如说明、大小、版本等
apt-cache depends PackageName       // 查看该软件包需要哪些依赖包
apt-cache rdepends PackageName      // 查看该软件包被哪些包依赖
apt-get check                       // 检查是否有损坏的依赖
```

## 使用git

ref git*

## 使用docker

ref docker*

## 使用vscode

ref vscode*

## 使用邮件客户端

安装最新版thunderbird

Adding this PPA to your system
You can update your system with unsupported packages from this untrusted PPA by adding ppa:ubuntu-mozilla-daily/ppa to your system's Software Sources. (Read about installing)

sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
sudo apt-get update
sudo apt-get install thunderbird

thunderbird

设置中文
preference-language(search for more language)-add chinese(china)

配置公司邮箱
ref [在升级到Thunderbird 78版后，不能收发电子邮件了](https://support.mozilla.org/zh-CN/kb/thunderbird-78-faq-cn#w_zai-sheng-ji-dao-thunderbird-78ban-hou-bu-neng-shou-fa-dian-zi-you-jian-liao)

首选项-配置编辑器-查找security.tls.version.min，并将值改为1-ssl/tls的验证方式选择普通密码

## 使用libreoffice

下载deb包[libreoffice](https://zh-cn.libreoffice.org/download/libreoffice/?type=deb-x86_64&version=7.2.3&lang=zh-CN)
下载[已翻译的用户界面语言包: 中文 (简体)]()

tar -zxvf LibreOffice_7.2.3_Linux_x86-64_deb.tar.gz
tar -zxvf LibreOffice_7.2.3_Linux_x86-64_deb_langpack_zh-CN.tar.gz
cd LibreOffice_7.2.3_Linux_x86-64_deb/DEBS
sudo dpkg -i ./lib*.deb
cd LibreOffice_7.2.3.2_Linux_x86-64_deb_langpack_zh-CN/DEBS
sudo dpkg -i ./lib*.deb

libreoffice7.2

## microsfto-edge

下载[edge](https://www.microsoft.com/zh-cn/edge?r=1#evergreen)

sudo apt-get install ./microsoft-edge-stable_96.0.1054.41-1_amd64.deb

## remmina

ref [how-to-install-remmina](https://remmina.org/how-to-install-remmina/#ubuntu)

sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt update
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret

List available plugins with apt-cache search remmina-plugin

## OBS Studio

ref [OBS Studio](https://obsproject.com/wiki/install-instructions#linux)

obs

## pgadmin

https://www.pgadmin.org/download/pgadmin-4-apt/

## shotcut

## gnome-boxes

sudo apt install gnome-boxes
sudo gnome-boxes

