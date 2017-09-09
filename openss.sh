if [ -z "$1" ]
then
	echo "请输入端口号"
	exit
fi

if [ -z "$2" ]
then
	echo "请输入密码"
	exit
fi

if [ -z "$3" ]
then
	echo "请输入pid文件名"
	exit
fi

ssserver -p $1 -k $2 -m aes-256-cfb --workers 10 --pid-file /tmp/$3 > /dev/null 2>&1 &
