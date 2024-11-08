show_system_details()
{
	    echo "Uptime is"
	    uptime
	    echo "Cpu details"
	    lscpu
	    echo "User list"
	    grep -vE "nologin|false" /etc/passwd | cut -d: -f1
}

is_file()
{
	if [ ! -f $1 ];then
		echo "The given file path and name is invalid"
		echo "$1 is not a file"
		exit 2
	fi
}

backup_file()
{
	is_file "$1"
	new_file_loc="$1.bak"
	cp $1 $new_file_loc
	echo "file is copied to $new_file_loc"
}	

read -p " please give file path to check: " reply
backup_file $reply
