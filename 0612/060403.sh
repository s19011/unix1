usage()
{
    local script_name=$(basename "$0")

    cat << END
使い方：060403.sh
DIRPATHで指定したディレクトリ下の実行可能ファイル一覧表示
DIRPATH-実行可能ファイルの一覧表示を行うディレクトリパスを指定
END
}

if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi

if [ -d "$1" ]; then
    for file in $(find "$1" -maxdepth 1 -type f)
    do
        #if [ -x "${1}/${file}" ] && [ ! -d "${1}/${file}" ]; then
        if [ -x "$file" ]; then
            echo "$file"
        fi
    done
else
    echo "${$1}:ディレクトリではありません"
fi
