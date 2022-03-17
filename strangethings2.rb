# By Dallas Estell
use_bpm 160
use_synth :saw
m = 0.5
live_loop :main_theme do
  with_fx :distortion do
    define :things do |s,t|
      play s
      sleep m
      play t
      sleep m
    end
    #second octave
    things :c2, :e2
    things :g2, :b2
    things :c3, :b2
    things :g2, :e2
    #third octave
    things :c3, :e3
    things :g3, :b3
    things :c4, :b3
    things :g3, :e3
    #fourth octave
    things :c4, :e4
    things :g4, :b4
    things :c5, :b4
    things :g4, :e4
    #fifth octave
    things :c5, :e5
    things :g5, :b5
    things :c6, :b5
    things :g5, :e5
  end
end