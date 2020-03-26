#!/bin/bash

https://github.com/upx/upx/releases/tag/v3.96

# 压缩体积方式
# -ldflags 里的  -s 去掉符号信息， -w 去掉DWARF调试信息，得到的程序就不能用gdb调试
go build -ldflags "-s -w"

upx -9 -o ./zebra2 ./zebra