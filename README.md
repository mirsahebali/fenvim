# Neovim config using fennel 

> [!NOTE]
> Currently this setup will only work on Unix-like operating systems
#### Dependencies
- curl
- git
- luajit
- make

### Setup 

#### 1. As your main config

- Clone the repo in your $XDG_CONFIG_HOME

```bash
git clone https://github.com/mirsahebali/fenvim.git $HOME/.config/nvim
```

- cd into the config
```bash
cd $HOME/.config/nvim
```

- Run the command to get fennel library
```bash
make get-fennel
```

- Start neovim
```bash
nvim
```

#### 2. As a secondary config


- Clone in your custom directory

```bash
git clone https://github.com/mirsahebali/fenvim.git $HOME/.config/fenvim
```

- cd into the config
```bash
cd $HOME/.config/fenvim
```

- Run the command to get fennel library
```bash
make get-fennel
```

- Start neovim
```bash
nvim
```
