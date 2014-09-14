Xsdl server for libsixel/SDL1.2-SIXEL
=====================================

Build on OSX
-------------

- install Xcode

- install Xquartz 2.7.7+

- install Homebrew

- git clone https://github.com/saitoha/xserver-xsdl-SIXEL.git

- cd xserver-xsdl-SIXEL

- git checkout sixel-for-Xquartz

- build and install dependencies

```
  $ ./build-deps.sh
```

- build and install Xsdl

```
  $ ./build-xsdl.sh
```

Control
-------

- Run

```
  $ ./startx.sh
```

or

```
  $ Xsdl :1 2> /dev/null
  $ DISPLAY=:1 xterm
```

- Keyboard layout fix for jp106

```
  $ SDL_SIXEL_KBD=jp106 Xsdl :1 2 -exec xterm 2> /dev/null
```

- Stop

```
  $ ./stop.sh
```

or

```
  $ pkill Xsdl
```

