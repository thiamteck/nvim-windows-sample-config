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
    - soft line wrap for text file and markdown file
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
- Scoop(https://scoop.sh/)
    - Open Windows Powershell:
        ```console
        Set-ExecutionPolicy RemoteSigned -scope CurrentUser
        iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
        ```
- Ctags (install via scoop: `scoop install ctags`)
- Git 
- Python 2.7, Python 3.6 (with pip, virtualenv)

Optional Dependencies:
-----------------------
- Node 8.9.x, npm 5.5.x
- [Visual C++ Redistributable for Visual Studio 2015](https://www.microsoft.com/en-my/download/details.aspx?id=48145)
- [Powerline fonts](https://medium.com/@slmeng/how-to-install-powerline-fonts-in-windows-b2eedecace58)

Configurations Info:
---------------------
- Configuration files location: `%userprofile%\AppData\Local\nvim\`
    - `init.vim` : main configuration files just like `.vimrc`
    - `ginit.vim` : configuration file just for GUI version of neovim
- Built-in color scheme directory: `%userprofile%\scoop\apps\neovim\0.3.0\Neovim\share\nvim\runtime\colors`

Installation:
--------------
1. Install [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
    `scoop install neovim`
2. Delete default configuration files (CAUTION: backup your files if this is not a fresh installation): 
    ```console
    cd %userprofile%\AppData\Local\nvim
    del /s /q *
    for /f "delims=" %x in ('dir /b /ad .') do rd /s /q "%x"
    ````
3. Clone this repository: 
    ```console
    cd %userprofile%\AppData\Local\nvim 
    git clone https://github.com/thiamteck/nvim-windows-sample-config.git .
    ```
4. Run installation script:
    ```console
    cd %userprofile%\AppData\Local\nvim
    scripts\express_setup.bat
    ```
5. (Optional) Install neovim provider for Node.js: `npm install -g neovim`
6. Install plugin with command: `nvim +PlugInstall`
