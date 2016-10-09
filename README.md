## vim配置

这里提供一个通用的.vimrc配置文件，使用Vundle管理插件，并且对Vim的一些默认设置进行的优化

说明
	
× .vimrc是Vim的配置文件，稍加修改可使Vim使用更加顺手
× Vundle是一个Vim插件管理工具，可以方便地安装各种Vim插件


## 使用方法

1. 安装Vundle

	`$ git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle`

2. 复制vimrc配置文件

	`$ git clone git@github.com:gorden5566/vimrc.git ~/.vim`

	`$ cp ~/.vim/vimrc/vimrc ~/.vimrc`

3. 安装Vundle插件

使用vim打开任意文件

	`$ vim test`

执行VundleInstall安装命令

	`:VundleInstall`

待安装完后退出vim

	`:qa`

4. 使用vim打开文件查看效果

	`vim ~/.vim`
