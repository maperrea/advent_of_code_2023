### Part 1 ###
puts File.read('input.txt').split("\n").map { |l| l.split(': ') } .sum { |game, input| input.split("; ").all? { |hand| hand.split(", ").map { |balls| [balls.split(' ')[0].to_i, balls.split(' ')[1]] }.all? { |num, col| (col == 'red' && num <= 12) || (col == 'green' && num <= 13) || (col == 'blue' && num <= 14) } } ? game[5..].to_i : 0 }
### Part 2 ###
puts File.read('input.txt').split("\n").map { |l| l.split(': ') } .sum { |game, input| input.split("; ").each_with_object(Hash.new(0)) { |hand, h| hand.split(", ").map { |balls| [balls.split(' ')[0].to_i, balls.split(' ')[1]] }.each_with_object(h) { |(num, col), h| h[col] = [num, h[col]].max } } .inject(1) { |memo, (col, num)| memo * num } }
