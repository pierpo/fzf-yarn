![Example usage](https://raw.githubusercontent.com/pierpo/fzf-yarn/master/fzf-yarn.gif)

# Dependencies

- [fzf](https://github.com/junegunn/fzf)

> on macOS: `brew install fzf`

- [jq](https://stedolan.github.io/jq/)

> on macOS: `brew install jq`

- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

# Installation

Clone the repo in `.oh-my-zsh/plugins/fzf-yarn`

```bash
git clone https://github.com/pierpo/fzf-yarn ~/.oh-my-zsh/plugins/fzf-yarn
```

Then add the plugin to your `.zshrc`

```bash
# In your .zshrc
plugins=(... fzf-yarn ...)
```

# Usage

If you don't like the `**` prefix (which is a fzf thing), you may change it in your `zshrc`:

```bash
export FZF_COMPLETION_TRIGGER='**'
```

I personally put `,` instead :wink:

## Scripts list

```bash
yarn **<TAB>
```

or if you change the config like I did

```bash
# If you change the fzf completion trigger to ','
yarn ,<TAB>
```
