## vim配置

这里提供一个通用的.vimrc配置文件，使用Vundle管理插件，并且对Vim的一些默认设置进行了优化

### 说明
	
* `.vimrc`是Vim的配置文件，稍加修改可使Vim使用更加顺手
* Vundle是一个Vim插件管理工具，可以方便地安装各种Vim插件
* vim-airline使用了Powerline字体，用于显示状态栏的各种图标

|快捷键|功能|
|:----:|:--:|
|F2|切换行号显示状态,便于复制|
|F3|切换paste模式,用于粘贴代码|
|F4|打开/关闭NERD类目窗口|
|F5|打开ctags窗口|
|F6|生成ctags|
|ctrl+h|切换到左边的窗口|
|ctrl+j|切换到下边的窗口|
|ctrl+k|切换到上边的窗口|
|ctrl+l|切换到右边的窗口|
|normal状态tab键|切换buffer|

## 安装方法

1. 安装Vundle

	`$ git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. 复制vimrc配置文件

	`$ git clone https://github.com/gorden5566/vimrc.git ~/.vim/vimrc`

	`$ cp ~/.vim/vimrc/vimrc ~/.vimrc`

3. 安装Vundle插件

	使用Vim打开任意文件

	`$ vim test`

	执行VundleInstall安装命令

	`:PluginInstall`

	待安装完后退出Vim

	`:qa`

4. 安装Powerline字体

	下载powerline字体

	`$ git clone https://github.com/powerline/fonts.git`

	安装字体

	`$ cd font`
	
	`$ sh ./install.sh`

5. 使用Vim打开文件查看效果

	`vim ~/.vimrc`

![image](https://github.com/gorden5566/vimrc/raw/master/screenshot/vimrc.png)
