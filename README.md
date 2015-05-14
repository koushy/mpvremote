# mpvremote

controls [mpv]. Welcoming feedback, improvements

have mpv listen on a socket via the configuration file at ~/.config/mpv/config :
> input-unix-socket=/tmp/mpvsocket

grab dependencies with

```sh
$ bundle
```

run server with:
```sh
$ rackup --host 0.0.0.0
```
to open from something other than localhost

[mpv]:http://mpv.io/
