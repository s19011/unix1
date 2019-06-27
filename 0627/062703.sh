#!/bin/bash
usage()
{
    local script_name=$(basename "$0")


    cat << END
使い方: 062703.sh DIRPATH
DIRPATHで指定したディレクトリ下のファイル数/ディレクトリ数を表示
DIRPATH - ファイル数/ディレクトリ数を表示するディレクトリパスを指定
END
}
    if [ "$#" -eq 0 ]; then
         usage
         exit 1
    fi

    file=$1

    if [ -d "$file" ]; then
        ls -1 | wc -l
        ls -l | grep ^d | wc -l


    else
        echo "${$1}:ディレクトリではありません"
    fi
