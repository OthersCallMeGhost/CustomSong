use_bpm 180
use_synth :blade
marianotes = [":fs5", ":e5", ":d5", ":e5",":fs5", ":fs5", ":e5", ":d5", ":d5", ":d5", ":e5", ":fs5", ":g5", ":d5", 0, ":d5",":e5", ":fs5", ":g5", ":fs5", ":fs5", ":g5", ":fs5", ":e5", ":d5", ":e5", ":e5", ":e5", ":e5", ":e5", ":d5", ":cs5", 0]
mariasleeps = [0.5, 0.5, 0.5, 1, 1.5, 0.5, 0.5, 0.5, 1, 1.5, 0.5, 0.5, 0.5, 1, 1, 0.5, 0.5, 1, 1.5, 1, 0.5, 1, 1.5, 0.5, 0.5, 1, 0.5, 1.5, 0.5, 0.5, 0.5, 1, 1, 1, 0.5, 0.5, 1, 1.5, 1]
d = 0.25
a = 0.5
s = 0
drumaria = "C:/Users/dallas_estell/Downloads/Dear Maria Drum T2.wav"
drumaria2 = "C:/Users/dallas_estell/Downloads/Dear Maria Drum TrackT3.wav"
vocalmaria = "C:/Users/dallas_estell/Downloads/Dear Maria Count Me In Intro.wav"
vocal2maria = "C:/Users/dallas_estell/Downloads/Second Verse.wav"
guitarmaria = "C:/Users/dallas_estell/Downloads/Dear Maria Count Me In (Guitar).wav"
define :eightm do
  play(marianotes[s])
  sleep(mariasleeps[s])
  s = s + 1
end
define :bassmaria do |b,m|
  sample b, amp: 2
  sleep a
  sample m, amp: 2
  sleep a
end
live_loop :gmaria do
  sample guitarmaria
  eightm
end
sleep 32
live_loop :dmaria do
  sample drumaria
  sleep 0.5
end
sleep 32
bassmaria  :bd_tek,  :sn_generic
live_loop :vmaria do
  with fx :echo do
    sample vocalmaria
    eightm
  end
end
sleep 32