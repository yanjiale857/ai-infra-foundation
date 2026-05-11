# Shell 基础练习命令
# 内容：echo、重定向、stdout/stderr、管道、tee、变量与引号

cd ~/workspace/ai-infra-foundation
mkdir -p shell_practice
cd shell_practice

# 1. echo 和覆盖重定向 >
echo "AI Infra Learning" > note.txt
cat note.txt

# 2. 追加重定向 >>
echo "Linux shell practice" >> note.txt
cat note.txt

# 3. 体验 > 会覆盖原文件
echo "old line" > cover_test.txt
cat cover_test.txt

echo "new line" > cover_test.txt
cat cover_test.txt

# 4. stdout 重定向
ls > out.txt
cat out.txt

# 5. stderr 重定向
ls not_exist_file 2> error.txt
cat error.txt

# 6. stdout 和 stderr 合并到同一个文件
ls note.txt not_exist_file > all.txt 2>&1
cat all.txt

# 7. 管道 |
ls -la | grep note

# 8. tee：一边输出到屏幕，一边写入文件
echo "write by tee" | tee tee_test.txt
cat tee_test.txt

# 9. tee -a：追加写入
echo "append by tee" | tee -a tee_test.txt
cat tee_test.txt

# 10. 变量和引号
name="AI Infra"

echo $name
echo "$name"
echo '$name'

# 11. 不加引号时，变量中的空格会导致参数拆分
mkdir $name
ls
rm -r AI Infra

# 12. 加双引号后，变量作为一个整体
mkdir "$name"
ls
rm -r "$name"
