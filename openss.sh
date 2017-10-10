if [ -z "$1" ]
then
	echo "openssh port password *.pid"
	exit
fi

if [ -z "$2" ]
then
	echo "openssh port password *.pid"
	exit
fi

if [ -z "$3" ]
then
	echo "openssh port password *.pid"
	exit
fi

ssserver -p $1 -k $2 -m aes-256-cfb --workers 10 --pid-file /tmp/$3 > /dev/null 2>&1 &
