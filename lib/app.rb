require 'socket'

class MpvRemote < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/mpv/:command' do |command|
    sendcommand("#{command}")
  end

  post '/mpv' do
    sendcommand("#{params['command']}")
  end

  def cmdtable(i)
    cmd = {
      "playpause"   => "cycle pause",
      "stepback"    => "add chapter -1",
      "stepforward" => "add chapter 1",
      "stop"        => "stop",
      "backward"    => "seek -5",
      "forward"     => "seek 5",
      "fullscreen"  => "cycle fullscreen",
      "subtitle"    => "cycle sub",
      "screenshot"  => "screenshot",
      "info"        => "show_text \"\$\{media-title\}\"",
      "ontop"       => "cycle ontop",
      "prev"        => "playlist_prev",
      "next"        => "playlist_next",
    }
    return cmd["#{i}"]
  end

  def sendcommand(c)  
    begin
      s = UNIXSocket.new '/tmp/mpvsocket'
      s.puts cmdtable("#{c}")
      s.close
    rescue 
      puts "error. is mpv running?"
    end
  end
end