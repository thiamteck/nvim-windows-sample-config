md python_env
cd python_env

py -2 -m virtualenv neovim
neovim\Scripts\activate
pip install neovim
pip install jedi
neovim\Scripts\deactivate

py -3 -m virtualenv neovim3
neovim3\Scripts\activate
pip install neovim
pip install jedi
neovim3\Scripts\deactivate