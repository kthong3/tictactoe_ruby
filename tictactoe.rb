# create board

def pretty_print
  board = []
  split_range = (1..9).to_a.each_slice(3) {|set| board << set }

  board.each do |set|
    p set
  end
    # 1.upto(9) { |i| print i, " | " }
end

pretty_print