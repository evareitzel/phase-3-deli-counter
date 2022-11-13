# # Write your code here.
# require 'pry'
# names_arr = []

def line(names_arr)
  if names_arr.length == 0 #.empty?
    puts "The line is currently empty." 
  elsif names_arr.length > 0
    waiting_line = "The line is currently:"
    names_arr.each.with_index(1) do |person, num| 
      waiting_line << " #{num}. #{person}"
    end
    puts waiting_line
  end 
end

def take_a_number(names_arr, person)
  names_arr << person
  puts "Welcome, #{person}. You are number #{names_arr.length} in line."
end

def now_serving names_arr
  if names_arr.empty? 
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{names_arr[0]}." #names_arr.first
    names_arr.shift
  end
end
