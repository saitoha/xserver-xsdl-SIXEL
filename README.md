Xsdl server for libsixel/SDL1.2-SIXEL
=====================================

Build
-----

- install Xcode

- install Xquartz 2.7.7+

- install Homebrew

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
  $ Xsdl :1
  $ DISPLAY=:1 xterm
```

- Stop

```
  $ ./stop.sh
```

or

```
  $ pkill Xsdl
```

