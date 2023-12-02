p File.read('input.txt').split("\n").map { |l| l.split(': ') } .sum { |game, input| input.split("; ").all? { |hand| hand.split(", ").map { |balls| [balls.split(' ')[0].to_i, balls.split(' ')[1]] }.all? { |num, col| (col == 'red' && num <= 12) || (col == 'green' && num <= 13) || (col == 'blue' && num <= 14) } } ? game[5..].to_i : 0 }
### Part 2 ###
puts File.read('input.txt').split("\n").map { |l| l.split(': ') } .sum { |game, input| 
	maxs = {'red' => 0, 'green' => 0, 'blue' => 0}
	oui = input.split("; ").each { |hand| hand.split(", ").map { |balls| [balls.split(' ')[0].to_i, balls.split(' ')[1]] }.each { |num, col| maxs[col] = [num, maxs[col]].max } }
	maxs['red'] * maxs['green'] * maxs['blue']
}
