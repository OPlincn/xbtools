#!/bin/sh
#Program:
# This is a free, convenient to just use Linux host novice integration shell script .
# Script integration within the script, are from the search engine and major BBS, blog .
# I do not assume any responsibility. Use this script on your behalf to be responsible for your own host .
#是一个免费的，方便于对刚刚使用Linux主机的新手的，整合shell脚本。
#本脚本内整合的所有脚本，均来源搜索引擎和各大论坛、博客。本人并不承担任何责任。使用本脚本代表自己将对自己的主机负责任。
#这是本人的第一个脚本，BUG多请多多见谅。QQ:2450171559
#History:
#2019/3/30    OPlin      开始折腾     V0.1
#2019/4/06    OPlin      加入更新脚本 V0.2
#2019/5/03    OPlin      修复循环BUG，增加下载判断
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
#主界面
mainGNU() {
clear
echo -e "\033[32m===============\033[0m\033[36m 小白工具V0.3 \033[32m===============\033[0m"
echo -e "本脚本最后修改于2019/5/03"
echo -e "作者OPlin | 此脚本的详细介绍在www.oplin.cn/index.php/archives/9 \n QQ:2450171559\n\n"
echo -e "${startblue}1${endblue}.VPS常用脚本整合"
echo -e "${startblue}2${endblue}.Liunx的一些命令"
echo -e "${startblue}3${endblue}.富强上网一键整合"
echo -e "${startblue}4${endblue}.Liunx一些软件安装"
echo -e "${startblue}5${endblue}.退出脚本"
echo -e "${startblue}6${endblue}.检查脚本更新\n"
read -p "键入数字以使用:" mainchoice
}
########################################################################脚本集合
script_collection() {
echo -e "\n\033[31m VPS常用脚本整合 \033[0m\n"
echo -e "\033[47;34m "加速"脚本 \033[0m" #蓝底黑字
echo -e "--------------------"
echo -e "${startblue}1${endblue}.安装魔改BBR四合一脚本(Locのcx9208大佬)"
echo -e "${startblue}2${endblue}.一键安装BBR(秋水逸冰大大)"
echo -e "--------------------\n"
echo -e "\033[43;34m "VPS测试脚本" \033[0m" #黄底蓝字
echo -e "--------------------"
echo -e "${startblue}3${endblue}.Superbench综合VPS测试(oooldking大佬)"
echo -e "${startblue}4${endblue}.SpeedTest测速脚本(Githubのsivel大佬)"
echo -e "${startblue}5${endblue}.UnixBench一键性能跑分(秋水逸冰大大)"
echo -e "${startblue}6${endblue}.Zbench服务器综合测试"
echo -e "--------------------\n"
echo -e "${startblue}7${endblue}.返回上一页\n"
read -p "键入数字以使用:" onechoice
}
#L###################################################################Linux命令整理
lxcommand() {
echo "咕咕咕咕中"
}
#####################################################################富强上网整理
richweb() {
echo -e "\n#############\n\033[31m 富强上网整理 \033\n[0m#############\n"
echo -e "\033[42;34m 个人使用类 \033[0m"
echo -e "--------------------"
echo -e "${startblue}1${endblue}.Shadowsocks四合一脚本(秋水大大)"
echo -e "${startblue}2${endblue}.ShaddowsocksR一键安装脚本[面板](逗比大佬)"
echo -e "${startblue}3${endblue}.一键安装Brook(逗比大佬)"
echo -e "--------------------\n"
echo -e "\033[42;34m 机场 \033[0m"
echo -e "--------------------"
echo -e "${startblue}4${endblue}.SSPANEL-V3-魔改MOD后端对接(七彩Blog)"
echo -e "${startblue}5${endblue}.Docker一键对接(官方)[多端口，请确保你已经安装了Docker]"
echo -e "--------------------\n"
echo -e "${startblue}6${endblue}.返回上一页\n"
read -p "键入数字以使用:" twochoice
}
######################################################################Linux软件
lxapp() {
echo "咕咕中"
}
######################################################各类JB函数
#####################################更新函数
script_update() {
cd $workfile;
wget -N --no-check-certificate https://raw.githubusercontent.com/OPlincn/xbtools/master/xbtools.sh
}
#####################################判断是否安装
install_judge() {
  echo -e "\n\033[33m 您确认安装它吗?请输入 \033[0m [${startblue}y${endblue}/${startblue}n${endblue}]"
read -p " :" judgechoice
if [[ $judgechoice == y ]] || [[ $judgechoice == Y ]]; then
{
echo -e "\033[36m 开始下载|安装啦! \033[0m"
}
else
{
break
}
fi
}
########################################################################################################开始执行命令
#############颜色变量
startblue="\033[36m"
endblue="\033[0m"
#检查权限
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }
#获取当前脚本目录
workfile=$(pwd)
#判断并建立，再cd至脚本放置目录
test -d /root/xbct
if [ $? == "1" ]; then {
     mkdir /root/xbct && cd /root/xbct
   }
 else
   {
echo -e "脚本文件夹位于/home/xbct"; cd /root/xbct
   }
fi
####################################
#进入主界面
ck=0
for ((g=1;g<100;))
do
mainGNU
if [[ $ck == 0 ]]; then
case ${mainchoice} in
  "1")
ck=1
unset mainchoice
script_collection
  ;;
  "2")
ck=0
unset mainchoice
lxcommand
break
  ;;
  "3")
ck=2
unset mainchoice
richweb
  ;;
  "4")
ck=0
unset mainchoice
lxapp
break
  ;;
  "5")
break && exit 1
  ;;
  "6")
script_update
  ;;
  *)
unset mainchoice
mainGNU
  ;;
esac
fi
if [[ $ck == 1 ]]; then
#进入VPS常用脚本整合
case ${onechoice} in
  "1")#安装魔改BBR四合一脚本
install_judge && wget "https://github.com/cx9208/Linux-NetSpeed/raw/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
  ;;
  "2")#秋水bbr
install_judge && wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
  ;;
  "3")#Superbench综合VPS测试
install_judge && wget --no-check-certificate https://raw.githubusercontent.com/oooldking/script/master/superbench.sh && chmod +x superbench.sh &&./superbench.sh
  ;;
  "4")#SpeedTest测速脚本
install_judge && wget --no-check-certificate https://raw.github.com/sivel/speedtest-cli/master/speedtest.py && chmod a+rx speedtest.py && python speedtest.py
  ;;
  "5")
install_judge && wget --no-check-certificate https://github.com/teddysun/across/raw/master/unixbench.sh && chmod +x unixbench.sh && ./unixbench.sh
  ;;
  "6")#ZBench
install_judge && wget -N --no-check-certificate https://raw.githubusercontent.com/FunctionClub/ZBench/master/ZBench-CN.sh && bash ZBench-CN.sh
  ;;
  *)
unset onechoice
ck=0
continue
mainGNU
  ;;
esac
fi
if [[ $ck == 2 ]]; then
#富强上网集合
case ${twochoice} in
  "1")#Shadowsocks四合一脚本
install_judge && wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh && chmod +x shadowsocks-all.sh &&./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log
  ;;
  "2")#ShaddowsocksR一键安装脚本[面板](逗比大佬)
install_judge && wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/ssrmu.sh && chmod +x ssrmu.sh && bash ssrmu.sh
  ;;
  "3")#一键安装Brook(逗比大佬)
install_judge && wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/brook.sh && chmod +x brook.sh && bash brook.sh
  ;;
  "4")#SSPANEL-V3魔改MOD(7COLOR)
install_judge && wget -N --no-check-certificate https://raw.githubusercontent.com/lizhongnian/ss-panel-v3-mod-node-connect/master/ss-panel-v3-mod-node-connect.sh && chmod +x ss-panel-v3-mod-node-connect.sh && bash ss-panel-v3-mod-node-connect.sh
  ;;
  "5")
  echo -e "咕咕咕咕中"
  break
  ;;
  *)
  unset twochoice
  ck=0
  continue
mainGNU
  ;;
esac
fi
done
