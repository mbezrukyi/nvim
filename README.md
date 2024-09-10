# Pre-Installation
Run: `sudo apt-get install ripgrep`

# Downloading
1. Navigate to [GitHub Neovim Releases](https://github.com/neovim/neovim/releases)
2. Copy the link to tar archive. Example: [Download Link](https://github.com/neovim/neovim/releases/download/v0.10.1/nvim-linux64.tar.gz)

# Installation
1. Run: `wget {{Download Link}}`
2. Unarchive the file whenever you want
3. Add its path to `PATH` in `.bashrc` file. Example: `export PATH=$HOME/nvim-linux64/bin:$PATH`
4. Run: `source .bashrc`
5. Navigate to `~/.config`
    - Run: `git clone https://github.com/mbezrukyi/nvim.git`
    - Run: `nvim nvim/`
    - Run: `:MasonInstall black`

---

**Done!**
