## vim 配置

这里提供一个通用的 .vimrc 配置文件，使用 Vundle 管理插件，并且对 Vim 的一些默认设置进行了优化

### 说明
	
* `.vimrc` 是 Vim 的配置文件，稍加修改可使 Vim 使用更加顺手
* Vundle 是一个 Vim 插件管理工具，可以方便地安装各种 Vim 插件
* vim-airline 使用了 Powerline 字体，用于显示状态栏的各种图标

|快捷键|功能|
|:----:|:---|
|F2|切换行号显示状态，便于复制|
|F3|切换 paste 模式，用于粘贴代码|
|F4|打开/关闭 NERD 目录窗口|
|F5|打开 ctags 窗口|
|F6|生成 ctags|
|ctrl+h|切换到左边的窗口|
|ctrl+j|切换到下边的窗口|
|ctrl+k|切换到上边的窗口|
|ctrl+l|切换到右边的窗口|
|normal状态 tab 键|切换 buffer|

## 安装方法

1. 安装 Vundle

	`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. 复制 vimrc 配置文件

	`$ git clone https://github.com/gorden5566/vimrc.git ~/.vim/vimrc`

	`$ cp ~/.vim/vimrc/vimrc ~/.vimrc`

3. 安装 Vundle 插件

	使用 Vim 打开任意文件

	`$ vim test`

	执行 VundleInstall 的安装命令

	`:PluginInstall`

	待安装完后退出 Vim

	`:qa`

4. 安装 Powerline 字体

	下载 powerline 字体

	`$ git clone https://github.com/powerline/fonts.git`

	安装字体

	`$ cd font`
	
	`$ sh ./install.sh`
5. 设置终端样式
	
	去掉`允许粗体字`，设置字体为 `Noto Mono for Powerline Regular`
	
	颜色：取消`使用系统主题中的颜色`的勾选，设置内置方案为`深色的 Solarized`，设置调色板内置方案为 `Solarized`
	
6. 使用Vim打开文件查看效果

	`vim ~/.vimrc`

![image](https://github.com/gorden5566/vimrc/raw/master/screenshot/vimrc.png)
