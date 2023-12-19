map = File.read('input.txt').split("\n").map { |l| l.chars }

### Part 1 ###

p (0...map.length).sum { |y|
    (0...map[y].length).sum { |x|
        if map[y][x].match(/[0-9]/) && (x == 0 || !map[y][x-1].match(/[0-9]/))
            fin = x
            while fin < map[y].length && map[y][fin].match(/[0-9]/)
                fin = fin + 1
            end
            if ((y-1).clamp(0, map.length-1) .. (y+1).clamp(0, map.length-1)).any? { |y2| ((x-1).clamp(0, map[y2].length-1) .. fin.clamp(0, map[y2].length-1)).any? { |x2| !map[y2][x2].match(/[0-9\.]/) } }
                map[y][x..].join.to_i
            else
                0
            end
        else
            0
        end
    }
}
