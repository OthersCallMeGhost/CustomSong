#00:45-01:06
use_bpm 170
use_synth :blade
t = 0
e = 0.5
i = 0.5
g = 1
h = 2
weight = "C:/Users/aghos/OneDrive/Desktop/song samples/weightless chorus.wav"
fadein = "C:/Users/aghos/OneDrive/Desktop/i wanna.wav"
intro = "C:/Users/aghos/OneDrive/Desktop/song samples/weightless beginning.wav"
instrumental = "C:/Users/aghos/OneDrive/Desktop/instrumental.wav"
guitar = "C:/Users/aghos/OneDrive/Desktop/eminem-guitar-hard.wav"
punch = "C:/Users/aghos/OneDrive/Desktop/kick-punch-stomp_120bpm_D_minor.wav"
vocals1 = "C:/Users/aghos/OneDrive/Desktop/mashuup.wav"
vocals2 = "C:/Users/aghos/OneDrive/Desktop/mashup.wav"
#array and paratermized function
weightnotes = [:a5, :a5, :a5, :g5, :g5, :fs5, :fs5, :fs5, :g5, :g5, :r, :r, :a4, :a5, :a5, :a5, :g5, :g5, :fs5, :e5, :e5, :r, :r, :r, :a4, :a5, :a5, :g5, :g5, :fs5, :fs5, :fs5, :fs5, :fs5, :fs5, :fs5, :g5, :fs5, :fs5, :fs5, :fs5, :fs5, :fs5, :e5, :e5, :e5, :r, :r, :r, :a4, :a5, :a5, :g5, :g5, :fs5, :fs5, :fs5, :d5, :d5, :r, :r, :a4, :a5, :a5, :g5, :g5, :fs5, :d5, :b4, :r, :r, :r, :b4, :a5, :a5, :g5, :fs5, :fs5, :fs5, :fs5, :fs5, :fs5, :fs5, :g5, :e5, :e5, :e5, :e5, :e5, :e5, :d5, :d5, :d5, :r, :r, :r]
weightsleeps = [0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 1, 1, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 1, 1, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 1, 1, 0.5, 1, 1, 1, 0.5, 1, 0.5,  0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 1, 1, 1, 1]
define :dandp do |w1, w2, w3, w4|
  sample w1
  sleep i
  sample w2
  sleep i
  sample w3
  sleep i
  sample w4
  sleep i
end
define :background do |a1,a2,a3,a4,a5,a6|
  sample a1, sustain: e
  sleep e
  sample a2, amp: h
  sleep e
  sample a3
  sleep e
  sample a4
  sleep e
  sample a5
  sleep g
  sample a6, sustain: g
  sleep g
end

#song starts
sample fadein
sleep 20
#main chorus
live_loop :chorus do
  5.times do
    64.times do
      play(weightnotes[t])
      sleep(weightsleeps[t])
      t = t + 1
    end
    t = 0
  end
  stop
end
sleep 64
sample instrumental
#drum and pedal
live_loop :second do
  64.times do
    dandp :drum_cymbal_pedal, :drum_bass_soft, :drum_snare_soft, :drum_snare_hard
  end
  stop
end
sleep 64
#kick and punch
live_loop :third do
  64.times do
    sample guitar, sustain: 2
    sleep 2
    sample punch, sustain: 2
    sleep 2
  end
  stop
end
sleep 64
sample instrumental
#background bass
live_loop :fourth do
  64.times do
    background :loop_mika, :bass_hit_c, :bass_woodsy_c, :bass_voxy_hit_c, :perc_snap, :elec_snare
  end
  stop
end
sleep 64
#final vocals
with_fx :eq do
  sample vocals1
  sample vocals2
end
#end
