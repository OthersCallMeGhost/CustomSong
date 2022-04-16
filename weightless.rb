#00:45-01:06
use_bpm 170
use_synth :blade
w = 0
i = 0.2
weight = "C:/Users/aghos/OneDrive/Desktop/song samples/weightless chorus.wav"
mariaout = "C:/Users/aghos/OneDrive/Desktop/song samples/mariafadeout.wav"
intro = "C:/Users/aghos/OneDrive/Desktop/song samples/weightless beginning.wav"
instrumental = "C:/Users/aghos/OneDrive/Desktop/weightless instum.wav"
guitar = "C:/Users/aghos/OneDrive/Desktop/eminem-guitar-hard.wav"
punch = "C:/Users/aghos/OneDrive/Desktop/kick-punch-stomp_120bpm_D_minor.wav"
vocals1 = "C:/Users/aghos/OneDrive/Desktop/mashuup.wav"
vocals2 = "C:/Users/aghos/OneDrive/Desktop/mashup.wav"
#array and paratermized function
weightnotes = [:a5, :a5, :a5, :g5, :g5, :fs5, :fs5, :fs5, :g5, :g5, :r, :r, :a4, :a5, :a5, :a5, :g5, :g5, :fs5, :e5, :e5, :r, :r, :r, :a4, :a5, :a5, :g5, :g5, :fs5, :fs5, :fs5, :fs5, :fs5, :fs5, :fs5, :g5, :fs5, :fs5, :fs5, :fs5, :fs5, :fs5, :e5, :e5, :e5, :r, :r, :r, :a4, :a5, :a5, :g5, :g5, :fs5, :fs5, :fs5, :d5, :d5, :r, :r, :a4, :a5, :a5, :g5, :g5, :fs5, :d5, :b4, :r, :r, :r, :b4, :a5, :a5, :g5, :fs5, :fs5, :fs5, :fs5, :fs5, :fs5, :fs5, :g5, :e5, :e5, :e5, :e5, :e5, :e5, :d5, :d5, :d5, :r, :r, :r]
weightsleeps = [0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 1, 1, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 1, 1, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 1, 1, 0.5, 1, 1, 1, 0.5, 1, 0.5,  0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 1, 1, 1, 1]
define :weigh do |w1, w2, w3, w4|
  sample w1
  sleep i
  sample w2
  sleep i
  sample w3
  sleep i
  sample w4
  sleep i
end
#song starts
live_loop :chorus do
  4.times do
    64.times do
      play(weightnotes[w])
      sleep(weightsleeps[w])
      w = w + 1
    end
    w = 0
  end
  stop
end
sleep 64
sample instrumental
64.times do
  live_loop :second do
    weigh :drum_cymbal_pedal
    weigh :drum_bass_soft
    weigh :drum_snare_soft
    weigh :drum_snare_hard
  end
  stop
end
sleep 64
sample instrumental
64.times do
  live_loop :third do
    sample guitar, sustain: 2
    sleep 2
    sample punch, sustain: 2
    sleep 2
  end
  stop
end;

