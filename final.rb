require 'bcrypt'

my_password = BCrypt::Password.create("MyPassword")

puts "password: #{my_password}"
puts "version: #{my_password.version}"
puts "cost: #{my_password.cost}"
puts my_password == "MyPassword"
puts my_password == "somethingelse"

my_password = BCrypt::Password.new("$2a$12$ei62cKw.e9L.uUgH2KhE5uaSCkMbXqJwhDZWs0kQ/27qZif8sX25e")

puts my_password == "MyPassword"
puts my_password == "NotMyPassword"