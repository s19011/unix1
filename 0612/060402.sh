usage()
{
    local script_name=$(basename "$0")


    cat << END
使い方：060402.sh FILEPATH
FILEPATHで指定したファイルの容量を表示
FILEPATH-容量を求めるファイルパスを指定、複数指定可
END
}

if [ "$#" -eq 0 ]; then
    usage
fi

for file in "$@"
do
    if [ -f "$file" ]; then
        du "$file"
    else
        echo "${file}:通常のファイルではありません"
    fi
done
