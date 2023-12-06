### Part 1 ### 
p File.read('input.txt').split("\n").map { |l| l.split().drop(1).map(&:to_i) } .transpose.inject(1) { |mult, (t, d)| mult * (((t + Math.sqrt((t**2) - (4 * d))) / 2).ceil().to_i - ((t - Math.sqrt((t**2) - (4 * d))) / 2).floor().to_i - 1) }
### Part 2 ###
p File.read('input.txt').split("\n").map { |l| [l.split().drop(1).join.to_i] } .transpose.inject(1) { |mult, (t, d)| mult * (((t + Math.sqrt((t**2) - (4 * d))) / 2).ceil().to_i - ((t - Math.sqrt((t**2) - (4 * d))) / 2).floor().to_i - 1) }
