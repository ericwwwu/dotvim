# dotvim

 
## reinstall vundle everytime
  `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`


## install vundle packages
  `:PluginInstall`

## install vim-jsx-pretty 
mkdir -p ~/.vim/pack/vim-jsx-pretty/start
cd $_
git clone git@github.com:MaxMEllon/vim-jsx-pretty.git


# using Tabs

:tab split copy current window to a new tab
:tabs list all tabs including their display window
:tabm 0 move current tab to first
:tabm move current tab to last
:tabm {i} move current tab to postion i+1
:tabm +{i} move current tab right to current position+i
:tabm -{i} move current taba left to current position-i

:tabn goto next tab
:tabp goto prev tab
:tabfirst goto first tab
:tablast goto last tab


in normal mode:
gt goto next tab
gT goto prev tab
{i}gt goto tab in position i


# using vim vinegar

- open parent directory of the current file
~ open $HOME
. start a command line with the path to the file under the cursor
y. Yank the current line or [count] lines as absolute paths.
d create a directory
% create a file
D delete a file

