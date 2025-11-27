#!/bin/bash

# 오늘 날짜
TODAY=$(date +"%Y-%m-%d")

# 파일 경로
FILE="daily/$TODAY.md"

# 템플릿 복사
cp daily/template.md "$FILE"

echo "Created $FILE"
