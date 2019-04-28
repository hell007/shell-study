
# 一键安装java环境

```
JAVA_DIR="/usr/local/java"
JAVA_VERSIN="jdk-1.8"

sudo su #切换到root权限
mkdir ${JAVA_DIR}
cd ${JAVA_DIR}

#download jdk 1.8
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.tar.gz"

#extract jdk
mkdir ${JAVA_VERSIN} && tar -xvf jdk-8u141-linux-x64.tar.gz -C ./${JAVA_VERSIN} --strip-components 1

#set environment
export JAVA_HOME="${JAVA_DIR}/"
if ! grep "JAVA_HOME=${JAVA_DIR}/${JAVA_VERSIN}" /etc/environment 
then
    echo "JAVA_HOME=${JAVA_DIR}/${JAVA_VERSIN}" | sudo tee -a /etc/environment 
    echo "export JAVA_HOME" | sudo tee -a /etc/environment 
    echo "PATH=$PATH:$JAVA_HOME/bin" | sudo tee -a /etc/environment 
    echo "export PATH" | sudo tee -a /etc/environment 
    echo "CLASSPATH=.:$JAVA_HOME/lib" | sudo tee -a /etc/environment 
    echo "export CLASSPATH" | sudo tee -a /etc/environment 
fi

#update environment
source /etc/environment  
ehco "jdk is installed !"
```
