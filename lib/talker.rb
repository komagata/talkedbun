require 'tmpdir'

module Talker
  def self.talk(text)
    path = "#{Dir.tmpdir}/#{text}"
    cmd = "SayKana -s 70 -o #{path}.aiff #{text}"
    system cmd

    system "yes | ffmpeg -i #{path}.aiff -f mp3 #{path}"
    sound = open(path) {|f| f.read }

    File.delete "#{path}.aiff"
    File.delete "#{path}"
    sound
  end
end
