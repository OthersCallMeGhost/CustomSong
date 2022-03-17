use_bpm 180
use_synth :blade
d = 0.25
a = 0.25
drumaria = "C:/Users/dallas_estell/Downloads/Dear Maria Drum T2.wav"
drumaria2 = "C:/Users/dallas_estell/Downloads/Dear Maria Drum TrackT3.wav"
vocalmaria = "C:/Users/dallas_estell/Downloads/Dear Maria Count Me In Intro.wav"
vocal2maria = "C:/Users/dallas_estell/Downloads/Second Verse.wav"
guitarmaria = "C:/Users/dallas_estell/Downloads/Dear Maria Count Me In (Guitar).wav"
define :eightm do
  use_synth_defaults amp: 3
  play :fs5
  sleep 0.5
  play :e5
  sleep 0.5
  play :d5
  sleep 0.5
  play :e5
  sleep 1
  play :fs5
  sleep 1.5
  #second measure
  play :fs5
  sleep 0.5
  play :e5
  sleep 0.5
  play :d5
  sleep 0.5
  play :e5
  sleep 1
  play :d5
  sleep 1.5
  #third measure
  play :d5
  sleep 0.5
  play :d5
  sleep 0.5
  play :d5
  sleep 0.5
  play :d5
  sleep 1
  play :e5
  sleep 1
  play :fs5
  sleep 0.5
  #fourth measure
  play :fs5
  sleep 0.5
  play :g5
  sleep 1
  play :d5
  sleep 1.5
  play :r
  sleep 1
  #fifth measure
  play :d5
  sleep 0.5
  play :e5
  sleep 1
  play :fs5
  sleep 1.5
  play :g5
  sleep 0.5
  play :fs5
  sleep 0.5
  #sixth measure
  play :fs5
  sleep 1
  play :g5
  sleep 0.5
  play :fs5
  sleep 1.5
  play :e5
  sleep 0.5
  play :d5
  sleep 0.5
  #seventh measure
  play :d5
  sleep 0.5
  play :e5
  sleep 1
  play :e5
  sleep 1
  play :e5
  sleep 1
  play :e5
  sleep 0.5
  #eighth measure
  play :e5
  sleep 0.5
  play :d5
  sleep 1
  play :cs5
  sleep 1.5
  play :r
  sleep 1
  a = a + 0.25
end
live_loop :gmaria do
  sample guitarmaria
  eightm
end
sleep 32
live_loop :dmaria do
  sample drumaria
  eightm
end
live_loop :bassmaria do
  sample :bd_tek, amp: 2
  sleep 0.5
  sample :sn_generic, amp: 2
  sleep 0.5
end
sleep 32
live_loop :vmaria do
  with_fx :echo do
    sample vocal2maria
    eightm
  end
end
sleep 32