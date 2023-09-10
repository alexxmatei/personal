"""""""""""""""""""""""" EDITOR CONFIGS """"""""""""""""""""""""""""""""""""""""
:set ruler " Show line & column nr.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""" PATHS, DIRECTORIES & FILES """"""""""""""""""""""""""""
" Set default home directory
:cd $UP_VIM_HOME_DIR
:args * " Open all files found in home directory to buffer 

:cd $UP_VIM_DIR_1
:args * " Open all files found in this directory to buffer 

" Go back to default home directory
:cd $UP_VIM_HOME_DIR
" Open the first file in the buffer
" This will either open the file given as argument or the 1st file in home dir
:b1
" If VIM is opened without an argument it will in home dir
" If VIM is opened with a PATH argument it will go there
:cd %:h
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
