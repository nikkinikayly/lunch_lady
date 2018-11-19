require 'pry'

@entree = [
    { name: "Meatloaf", price: 3.00 },
    { name: "Slop", price: 1.00 }, 
    { name: "Mystery Meat", price: 5.00 },
]


@side_arr = [
    { name: "Carrots", price: 1.75 },
    { name: "Mystery Yogurt", price: 1.00 }, 
    { name: "Beef Jerky", price: 0.50 }
]

@cart = []

class Lunch

def initialize
    greeting
end

def greeting
    puts "Please pick one! :)"
    menu(@entree)
    menu(@side_arr)
    menu(@side_arr)
    checkout
end


def menu(arr)
    arr.each_with_index do |item, i|
        puts "#{i + 1}) #{item[:name]} - $#{item[:price]}"
    end
    print "> "
    choice = gets.to_i
    @cart << arr[choice - 1]
end

def checkout
    total = 0.00
    temp = total
    @cart.each_with_index do |item, i|
        puts "#{item[:name]}"
        temp = total + item[:price]
        total = temp
    end
    puts total
end

end


l = Lunch.new
l.side_menu
l.checkout




