# Vi-Increment

Increment and decrement numbers easily with `Ctrl+a` and `Ctrl+x`:

## Usage

```
$ 200             # 10<C-x>
$ 190             # 200.
$ -10
```
```
$ 0077            # <C-a> (with setopt octalzeroes)
$ 0100
```
```
$ 0b100011        # 11<C-x>
$ 0b11000
```
```
$ (( -0x0040 ))   # 8<C-a>
$ (( -0x0038 ))
```

## Support

- Operates in both `visual` and `vicmd` modes
- Preserves leading zeroes
- C-formats hex numbers: `0x[hex]`
- Supports `0b[binary]` nubers
- If `setopt OCTAL_ZEROES`: C-formats octal numbers `0[oct]`

Future support:

- Detect arbitrary zsh-format base `[base]#[num]`
- Preserve underscores
## Installation

**Antigen**:
```zsh
antigen bundle zsh-vi-more/vi-increments
antigen apply
```

**Zgen**:
```zsh
zgen load zsh-vi-more/vi-increment
zgen save
```


**Zplug**:
```zsh
zplug zsh-vi-more/vi-increment
```

**Zplugin**:
```zsh
zplugin ice wait "0"
zplugin light zsh-vi-more/vi-increment

# Optionally, track the latest development version:
zplugin ice wait "0" ver"dev"
zplugin light zsh-vi-more/vi-increment
```

**Manually**: Clone the project, and then source it:
```zsh
source /path/to/vi-increment/vi-increment.zsh
```
