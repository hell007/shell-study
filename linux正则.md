

## BER模式 sed识别

纯文本  echo "this is test" | sed -n  '/test/p'

特殊字符 *[]^${}\+?|()  需要转义  '/\*/p'

锚字符 

锁定在行首 '/^test/p'

锁定在行尾 '/book$'

组合锚点  

得到一行  '^this ... book$' 

去除行间的空格  '^$'

点字符  '/.at/p'

字符组 特殊字符组成 '/[ch]at/p'    '/^[01223]$/p'

排除字符组 在字符组开头加脱字符 '/[^ch]at/p'

区间 '/^[0-9][0-9][0-9]$/p'

特殊字符组 略

星号 出现0次或者多次 '/ie*k/p'


## 拓展正则 ERR模式 gawk识别

问号  像星号 出现0次或者1次,多次不符合  echo "bt" | gawk '/be?t/{print $0}'

加号 可以出现1次或者多次，但是必须至少出现1次  '/be+t/{print $0}'

使用花括号  echo "beet" | gawk --re-interval '/be{1,2}t/{print $0}'

管道符号   echo "this is cat" | gawk '/cat|dog/{print $0}'

聚合表达式  echo "Saturday" | gawk '/Sat(trday)?/{print $0}'


## 实用正则表达式


目录文件计数  

echo $PATH | sed 's/:/ /g'
for循环来统计

验证电话号码

邮件






