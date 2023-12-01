### Part 1 ###
puts File.read("input.txt").split("\n").sum  { |l| (l.chars.find(0) { |c| c.match(/[0-9]/) }).to_i * 10 + (l.chars.reverse_each.find(0) { |c| c.match(/[0-9]/) }).to_i }
### Part 2 ###
numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
puts File.read("input.txt").split("\n").sum { |l| (0...l.length).lazy.map { |i| l[i].to_i + numbers.find_index { |n| l[i..].start_with? n }.to_i } .find(0) { |i| i != 0 } * 10 + (0...l.length).reverse_each.lazy.map { |i| l[i].to_i + numbers.find_index { |n| l[i..].start_with? n }.to_i } .find(0) { |i| i != 0 } }
