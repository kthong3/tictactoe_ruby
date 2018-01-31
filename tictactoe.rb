# create board

def pretty_print
  (1..9).to_a.each_slice(3) {|number| p number}
end

pretty_print