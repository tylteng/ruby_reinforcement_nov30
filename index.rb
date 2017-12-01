array = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]


array.each_with_index do |x, y|
  x.each_with_index do |value, index|
    if value == nil
      p "Row #{y+1} seat #{index+1} is free. (y/n)"
      answer = gets.chomp.to_s
      if answer == 'y'
        p "What is your name?"
        name = gets.chomp.to_s
        x[index] = name
        p array
        return
      end
    end
  end
end
