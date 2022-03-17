use_bpm 120
use_synth :fm
define :first do
  play :a4
  play :a5
end
define :mortal do |n, m|
  play n
  play m
  sample :drum_tom_lo_hard
  sleep 0.5
end
live_loop :kombat do
  # MEASURE 1 ---------------------------
  mortal :a4, :a5
  
  mortal :c5, :c6
  
  mortal :a4, :a5
  
  mortal :d5, :d6
  
  mortal :a4, :a5
  
  mortal :e5, :e6
  
  mortal :d5, :d6
  
  
  # MEASURE 2 ---------------------------
  mortal :c5, :c6
  
  mortal :c5, :c6
  
  mortal :e5, :e6
  
  mortal :c5, :c6
  
  
  mortal :g5, :g6
  
  mortal :c4, :c5
  
  mortal :e5, :e6
  
  
  mortal :c4, :c5
  # MEASURE 3 ---------------------------
  mortal :g4, :g5
  
  mortal :g4, :g5
  
  
  mortal :b4, :b5
  
  mortal :g4, :g5
  
  mortal :c5, :c6
  
  mortal :g4, :g5
  
  mortal :d5, :d6
  
  mortal :c5, :c6
  
  # MEASURE 4 ---------------------------
  mortal :f4, :f5
  
  mortal :f4, :f5
  
  mortal :a4, :a5
  
  mortal :f4, :f5
  
  mortal :c5, :c6
  
  mortal :f4, :f5
  
  mortal :c5, :c6
  
  mortal :b4, :b5
end