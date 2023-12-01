### Part 1 ###
puts File.read("input.txt").split("\n").sum  { |l| {10 => l.chars, 1 => l.chars.reverse_each}.sum { |k, l| l.find(0) { |c| c.match(/[0-9]/) } .to_i * k } }
### Part 2 ###
puts File.read("input.txt").split("\n").sum { |l| {10 => (0...l.length), 1 => (0...l.length).reverse_each}.sum { |k, v| v.lazy.map { |i| l[i].to_i + ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'].find_index { |n| l[i..].start_with? n }.to_i } .find(0) { |i| i != 0 } * k } }
