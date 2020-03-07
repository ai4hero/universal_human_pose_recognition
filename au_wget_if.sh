#!/bin/bash
# wget http://www.baidu.com


Sourcesystem="ABC"

if [ "$Sourcesystem" = "XYZ" ]; then 
    echo "Sourcesystem Matched" 
else
    echo "Sourcesystem is NOT Matched $Sourcesystem"  
fi;



cat index.html | grep licence |awk -F ":" '{print $2}' > lic000
lic=`cat lic000`
echo $lic
macnum="BD5267MMC"
echo $macnum
macnull="0"
echo $macnull
if [ "$lic" = "$macnum" ]; then
  echo "授权正确，执行程序"
elif  [ "$lic" = "$macnull" ]; then
  echo "授权过期"
else
  echo "6个框架为注册，请登陆云智信息授权中心获取授权"
  sleep 30
  ps -ef | grep 'terminal' | awk '{print $2}' > TERMINAL_ID
  kill_terminal_id=`head -1 TERMINAL_ID`
  sudo kill $kill_terminal_id
fi;

