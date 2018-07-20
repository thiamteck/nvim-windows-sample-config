md python_env
cd python_env

py -2 -m virtualenv neovim
call neovim\Scripts\activate
pip install neovim
pip install jedi
call neovim\Scripts\deactivate

py -3 -m virtualenv neovim3
call neovim3\Scripts\activate
pip install neovim
pip install jedi
call neovim3\Scripts\deactivate

cd ..