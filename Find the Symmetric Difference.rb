def sym(*args)
  length_args = args.length
  sym_dif = []
  sym_dif2 = []
  args.each_with_index do |arg, index|
    if index < 1
      p sym_dif << arg.difference(args[index+1])
      p sym_dif << args[index+1].difference(arg)
    elsif index >= 2
      p sym_dif2 << sym_dif.flatten.difference(arg)
      p sym_dif2 << arg.difference(sym_dif.flatten)
    end
  end
    if sym_dif2.empty?
      p sym_dif.flatten.sort
    else
      p sym_dif2.flatten.sort

    end
end


  # puts args[0].difference(args[1])
  # puts args[1].difference(args[0])



sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3])
# sym([1, 2, 3], [5, 2, 1, 4])
# sym([1, 2, 3, 3], [5, 2, 1, 4])
# sym([1, 2, 5], [2, 3, 5], [3, 4, 5])
# sym([3, 3, 3, 2, 5], [2, 1, 5, 7], [3, 4, 6, 6], [1, 2, 3], [5, 3, 9, 8], [1])

# [ 1, 1, 2, 2, 3, 3, 4, 5 ].difference([ 1, 2, 4 ])
# elements.each_with_index {|element, index|
  # next_element = elements[index+1]
  # do_something unless next_element.nil?
