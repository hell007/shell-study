
# 一键安装tomcat

```
#install tomcat
sduo su
mkdir /usr/local/tomcat
cd /usr/local/tomcat
wget http://apache.fayea.com/apache-mirror/tomcat/tomcat-7/v7.0.56/bin/apache-tomcat-7.0.56.tar.gz
tar -xvf apache-tomcat-7.0.56.tar.gz
#change port 8080 to 80
sed -i 's/8080/80/' apache-tomcat-7.0.56/conf/server.xml
#startup
nohup ./apache-tomcat-7.0.56/bin/startup.sh
```
