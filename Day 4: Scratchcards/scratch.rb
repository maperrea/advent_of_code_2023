### Part 1 ###
p File.read('input.txt').split("\n").map { |l| l.split(": ")[1].split(" | ").map { |x| x.split(" ").map(&:to_i) } }.sum { |(win, hand)| (2 ** (win.sum { |n| hand.include?(n) ? 1 : 0 } - 1)).to_i }
### Part 2 ###
p File.read('input.txt').split("\n").each_with_object(h = Hash.new()) { |l, h| h[l[4..].to_i] = [1, l.split(": ")[1].split(" | ").map { |x| x.split(" ").map(&:to_i) } ] } .each { |card, (num, (win, hand))| (card + 1 .. card + win.sum { |n| hand.include?(n) ? 1 : 0 }).each { |i| h[i][0] += num } }.sum { |card, (num, (win, hand))| num }
