#!bin/bash

echo"now install pyenv"
yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel -y

yum install zlib-devel bzip2-devel sqlite sqlite-devel openssl-devel -y

yum install git -y

echo "clone pyenv"
mkdir ~/.pyenv
git clone git://github.com/yyuu/pyenv.git ~/.pyenv  
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc  
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc  
echo 'eval "$(pyenv init -)"' >> ~/.bashrc  
exec $SHELL -l

echo "check pyenv"
pyenv install --list
