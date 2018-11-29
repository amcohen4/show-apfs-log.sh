# A. M. Cohen 20Oct2018

if [[ -z $1 ]]; then
    printf "Enter start date (e.g. 2018-10-20): "
    read start_date
else
    start_date=$1
fi
case ${start_date} in
    [1-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9])
        ;;
    *)
	echo "ERROR: Invalid start date (${start_date})"
	exit 1
	;;
esac

log show --info --debug --start "${start_date} 00:00:00" | grep -i apfs
