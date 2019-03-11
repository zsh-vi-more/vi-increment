# Vi-Increment

Increment and decrement numbers easily with `Ctrl+a` and `Ctrl+x`:

## Usage

```
$ 200        # 10<C-x>
$ 190        # 200.
$ -10
```
```
$ 0077       # <C-a>
$ 0100
```
```
$ 0b100011   # 11<C-x>
$ 0b11000
```
```
$ (( -0x0040 ))   # 8<C-a>
$ (( -0x0038 ))
```

## Support

- Operates on a visual-mode selection
- Preserves leading zeroes
- C-format hex numbers: `0x[hex]`
- Support `0b[binary]` nubers
- If `setopt OCTAL_ZEROES`: C-format octal numbers `0[oct]`

Future support:

- Detect arbitrary zsh-format base `[base]#[num]`
- Preserve underscores
