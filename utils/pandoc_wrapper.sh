#!/bin/bash
pandoc -t latex -f markdown --lua-filter=filter.lua -o "${1%.*}.tex" $1
