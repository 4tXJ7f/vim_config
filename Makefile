install:
	rm -f ~/.vimrc
	ln -s ~/.vim/vimrc ~/.vimrc
	git submodule init
	git submodule update

update:
	git submodule foreach git pull origin master
