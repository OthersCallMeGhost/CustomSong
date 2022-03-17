# Seven Nation Army by The White Stripes
use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25
nationa = [":e3", ":e3", ":g3", ":e3",0, ":d3",":c3", ":b2"]
sleepa = [1.5, 0.5, 0.75, 0.25, 0.5, 0.5, 2, 2]
i = 0
live_loop :white_stripes do
  with_fx :normaliser do
    8.times do
      play (nationa[i])
      sleep (sleepa[i])
      i = i + 1
    end
    i = 0
  end
end