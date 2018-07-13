nvim-windows-sample-config
===========================

Just a simple Neovim configuration which was used at Windows environment.

Work in progress.

Notable enhancements:
----------------------
- Log files viewing:
    - Highlight lines with previous matched pattern via Highlight.vim: `<C-h><C-j>`
- Tuned for general writing:
    - distraction free writing via [Goyo](https://github.com/junegunn/goyo.vim) & [Limelight](https://github.com/junegunn/limelight.vim)
    - grammar check with [vim-wordy](https://github.com/reedes/vim-wordy)
    - include [Markdown with Vim](https://github.com/gabrielelana/vim-markdown)
- Enhanced UI with [NERDTree](https://github.com/scrooloose/nerdtree), [vim-airline](https://github.com/vim-airline/vim-airline)    
- Many [awesome colorscheme](https://github.com/rafi/awesome-vim-colorschemes) to choose from, and able to use different colorscheme for GUI and console mode. 
- Python auto completion with [Deoplete](https://github.com/Shougo/deoplete.nvim), and [deoplete-jedi](https://github.com/zchee/deoplete-jedi)

Tested with:
---------------
- OS: Windows 10
- Windows Command Prompt, nvim-qt (Not doing well with Cmder yet)

Pre-requisite:
-----------------
- Windows Powershell
- Scoop ( https://scoop.sh/ )
    - Open Windows Powershell:
        ```console
        Set-ExecutionPolicy RemoteSigned -scope CurrentUser
        iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
        ```
- Ctags (install via scoop: `scoop installl ctags`)
- Git 

Optional Dependencies:
-----------------------
- Python 2.7, Python 3.6
- Node 8.9.x, npm 5.5.x
- [Visual C++ Redistributable for Visual Studio 2015](https://www.microsoft.com/en-my/download/details.aspx?id=48145)
- [Powerline fonts](https://medium.com/@slmeng/how-to-install-powerline-fonts-in-windows-b2eedecace58)

Configurations Info:
---------------------
- Configuration files location: %userprofile%\AppData\Local\nvim\
    - `init.vim` : main configuration files just like `.vimrc`
    - `ginit.vim` : configuration file just for GUI version of neovim
- Built-in color scheme directory: %userprofile%\scoop\apps\neovim\0.3.0\Neovim\share\nvim\runtime\colors

Installation:
--------------
1. Install [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
    `scoop install neovim`
2. Install neovim provider for Python
    ``` console
    cd %userprofilei%\AppData\Local\nvim\
    scripts\setup_python_virtualenv.bat

    ```
3. Install neovim provider for Node.js too (since I have it already): `npm install -g neovim`
4. Get dictionary files for spell check:
    ``` console
    cd %userprofile%\AppData\Local\nvim\
    scripts\setup_dictionary.bat
    ```
5. Install [vim-plug]( https://github.com/junegunn/vim-plug )
    ```console
    cd %userprofile%\AppData\Local\nvim\
    md autoload
    cd autoload
    curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > plug.vim
    ```
6. Configure vim-plug in `init.vim`:
    ```
    call plug#begin('%userprofile%\AppData\Local\nvim\plugged')
    call plug#end()
    ```
7. Configure `init.vm` and `ginit.vim` as in this repository
8. Install plugin via `:PlugInstall`, or `$ nvim +PlugInstall`
