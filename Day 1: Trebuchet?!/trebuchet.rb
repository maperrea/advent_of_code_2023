### Part 1 ###
puts File.read("input.txt").split("\n").sum  { |l| (l.chars.find(0) { |c| c.match(/[0-9]/) }).to_i * 10 + (l.chars.reverse_each.find(0) { |c| c.match(/[0-9]/) }).to_i }
### Part 2 ###
