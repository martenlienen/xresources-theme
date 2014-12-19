# .Xresources-theme

This theme reads it's colors from your `~/.Xresources` file, so that you can
easily keep your emacs theme in sync with your xterm and other X applications.

## In Action

Here you can see xterm and emacs, both configured with
[the .Xresources version of solarized](https://github.com/altercation/solarized/blob/master/xresources/solarized).

![Screenshot](screenshot.png)

## Configuration

Configure your theme in your `~/.Xresources` like

```
*foreground: #000000
*background: #FFFFFF
*color0: #111111
! ...
*color15: #FFFFFF
```

You can also set colors specifically for emacs like

```
emacs*background: #123456
```

although this defies the whole purpose of this theme.

Remember, that an X application gets it's resources at startup. So to make
changes in your `~/.Xresources` apply to your emacs, you have to reload the
resource configuration with `xrdb ~/.Xresources` and then restart your emacs.
