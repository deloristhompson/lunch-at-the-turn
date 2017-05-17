menu = {
  hamburger: 400,
  hot_dog: 300,
  fries: 200,
  chips: 100,
  water: 125,
  soda: 150
}

items_not_found = nil
items = []
while items_not_found.nil? || !items_not_found.empty?
  menu.each do |item, price|
    puts "#{item.upcase} #{price}"
  end
  puts "Welcome to Goodburger, home of the Goodburger! Can I take your order?"

  order = gets.chomp.downcase
  items = order.split(", ")

  symboled_items = []
  items.each do |item|
    symboled_items << item.gsub(" ", "_").to_sym
  end

  items_not_found = symboled_items - menu.keys

  if !items_not_found.empty?
    items_not_found.each do |missing|
      puts "Sorry, we don't have #{missing} on the menu"
    end
  end

  total = 0
  symboled_items.each do |item|
    menu[item] == menu.keys
    total += menu[item].to_f
  end
end
puts "Thanks! Your total is $#{'%.2f' % (total / 100.to_f)}. Have a nice day!"
