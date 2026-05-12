#!/usr/bin/env bash

echo "===== Current Directory ====="
pwd

echo "===== Project Files ====="
find . -type f

echo "===== Log Files ====="
find . -name "*.log" -type f

echo "===== Error Lines ====="
find . -name "*.log" -type f | xargs grep -n "error"

echo "===== Git Status ====="
cd ~/workspace/ai-infra-foundation
git status
