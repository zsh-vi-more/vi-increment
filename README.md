# Vi-Increment

Increment and decrement numbers easily with `Ctrl+a` and `Ctrl+x`:

## Usage

```
$ 200    # 10<C+a>
$ 210
```
```
$ "0x0040"   # 8<C+x>
$ "0x0038"
```

## Support

- Preserves leading zeroes
- C-format hex numbers: `0x[hex]`

Future support:

- Support `0b[binary]` nubers
- If `setopt OCTAL_ZEROES`: C-format octal numbers
- Detect arbitrary zsh-format base `[base]#[num]`
- Preserve underscores
