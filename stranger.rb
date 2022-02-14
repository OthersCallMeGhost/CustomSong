use_bpm 160
use_synth :dsaw

with_fx :echo do
  define :strange_theme do
    play :c2
    sleep 0.5
    play :e2
    sleep 0.5
    play :g2
    sleep 0.5
    play :b2
    sleep 0.5
    
    # Second set of eigth notes
    play :c3
    sleep 0.5
    play :b2
    sleep 0.5
    play :g2
    sleep 0.5
    play :e2
    sleep 0.5
  end
  with_fx :reverb do
    strange_theme
  end
  with_fx :wobble do
    strange_theme
  end
  with_fx :pitch_shift do
    strange_theme
  end
end