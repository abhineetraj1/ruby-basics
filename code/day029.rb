=begin
  [Day 029] Account handling (Create, delete, verify) I: Arrays
=end

users = []

def create_account(users)
  puts "Please enter a username:"
  username = gets.chomp
  if users.any? { |u| u[:username] == username }
    puts "Username already taken. Please choose another."
    return
  end
  puts "Please enter a password:"
  password = gets.chomp
  puts "Please enter the user's roles, separated by commas:"
  roles = gets.chomp.split(",").map(&:strip)
  users.push({ username: username, password: password, roles: roles })
  puts "Account created successfully."
end

def delete_account(users)
  puts "Please enter the username of the account to delete:"
  username = gets.chomp
  index = users.find_index { |u| u[:username] == username }
  if index
    users.delete_at(index)
    puts "Account deleted successfully."
  else
    puts "User not found."
  end
end

loop do
  puts "Please select an action:"
  puts "1. Log in"
  puts "2. Create an account"
  puts "3. Delete an account"
  puts "4. Exit"
  choice = gets.chomp.to_i
  case choice
  when 1
    puts "Please enter your username:"
    username = gets.chomp
    puts "Please enter your password:"
    password = gets.chomp
    user = users.find { |u| u[:username] == username && u[:password] == password }
    if user
      puts "Welcome, #{username}!"
      puts "Your roles are: #{user[:roles].join(", ")}"
    else
      puts "Invalid username or password."
    end
  when 2
    create_account(users)
  when 3
    delete_account(users)
  when 4
    break
  else
    puts "Invalid choice. Please try again."
  end
end