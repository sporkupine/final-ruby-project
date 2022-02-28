require 'bcrypt'

users = [
  {username: "Connor", password: "password1"},
  {username: "Erin", password: "password2"},
  {username: "Josh", password: "password3"},
  {username: "Mike", password: "password4"}
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(user_list)
  user_list.each do |user|
    user[:password] = create_hash_digest(user[:password])
  end
  user_list
end

puts create_secure_users(users)