## Xi's Dotfiles

Development environment for macOS with Helix editor optimized for writing.

### Included
- [Helix](https://helix-editor.com) (soft wrap, markdown LSP)
- Git (GPG signing, aliases)
- Zsh (completion, aliases)
- CLI tools ([ripgrep](https://github.com/BurntSushi/ripgrep), [gh](https://cli.github.com), [marksman](https://github.com/artempyanykh/marksman))

### Installation

```bash
mkdir -p ~/code && cd ~/code
git clone https://github.com/aefhm/dotfiles.git && cd dotfiles
make
```

**Post-install:**
```bash
sudo scutil --set HostName your-machine-name
ssh-keygen -t ed25519 -C "info@xizhang.page"
```

### Requirements
- macOS with Xcode CLI tools
- Overwrites existing configs in `~/` and `~/.config/`
