# mpvremote

controls [mpv]. I welcome feedback or improvements.

have mpv listen on a socket via the configuration file at ~/.config/mpv/config :
	
	input-unix-socket=/tmp/mpvsocket

grab dependencies with

	$ bundle

run server with:

	$ rackup --host 0.0.0.0

to open from something other than localhost.


[mpv]:http://mpv.io/