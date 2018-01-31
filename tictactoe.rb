# create board

def pretty_print
  board = []
  split_range = (1..9).to_a.each_slice(3) {|set| board << set }

  board.map! do |set|
    set.join("").insert(1, "|").insert(3, "|")
  end

  board.insert(1, "_____").insert(3, "_____")

  board.each do |set|
    puts set
  end
end

pretty_print