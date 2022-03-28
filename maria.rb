use_bpm 180
use_synth :blade
marianotes = [:fs5, :e5, :d5, :e5, :fs5, :fs5, :e5, :d5, :e5, :d5, :d5, :d5, :d5, :d5, :e5, :fs5, :fs5, :g5, :d5, :r, :d5, :e5, :fs5, :g5, :fs5, :fs5, :g5, :fs5, :e5, :d5, :d5, :e5, :e5, :e5, :e5, :e5, :d5, :cs5, :r]
mariasleeps = [0.5, 0.5, 0.5, 1, 1.5, 0.5, 0.5, 0.5, 1, 1.5, 0.5, 0.5, 0.5, 1, 1, 0.5, 0.5, 1, 1.5, 1, 0.5, 1, 1.5, 0.5, 0.5, 1, 0.5, 1.5, 0.5, 0.5, 0.5, 1, 1, 1, 0.5, 0.5, 1, 1.5, 1]
s = 0
a = 0.5
drumaria = "C:/Users/dallas_estell/Downloads/Dear Maria Drum T2.wav"
drumaria2 = "C:/Users/dallas_estell/Downloads/Dear Maria Drum TrackT3.wav"
vocalmaria = "C:/Users/dallas_estell/Downloads/Dear Maria Count Me In Intro.wav"
vocal2maria = "C:/Users/dallas_estell/Downloads/Second Verse.wav"
guitarmaria = "C:/Users/dallas_estell/Downloads/Dear Maria Count Me In (Guitar).wav"
define :bassmaria do |b,m|
  sample b, amp: 2
  sleep a
  sample m, amp: 2
  sleep a
end

###--- song starts here! ---###
sample guitarmaria
sample vocalmaria
live_loop :first do
  3.times do
    39.times do
      play(marianotes[s])
      sleep(mariasleeps[s])
      s = s + 1
    end
    s = 0
  end
  stop
end

sleep 32

live_loop :second do
  3.times do
    sample :bd_zome , sustain: 2
    sleep 0.5
    sample :drum_bass_soft, sustain: 2
    sleep 0.5
  end
  stop
end

sleep 32

live_loop :third do
  3.times do
    bassmaria :bd_tek, :sn_generic
    sample :drum_splash_soft
  end
  stop
end

sleep 32
with_fx :echo do
  sample vocal2maria
end
