#!/bin/bash

# 写一个脚本，实现计算器的功能
function calcu
{
    case $2 in
        +)
            echo "expr $1 + $3"
            ;;
        -)
            echo "expr $1 - $3"
            ;;
        \*)
            echo "expr $1 \* $3"
            ;;
        /)
            echo "expr $1 / $3"
            ;;
    esac
}

calcu $1 $2 $3