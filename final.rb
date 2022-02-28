require 'bcrypt'


def create_hash_digest(password)
  BCrypt::Password.create(password)
end

