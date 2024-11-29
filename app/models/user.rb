include BCrypt

class User < ApplicationRecord

  def save
    self.password = Password.create(self.password)
    super()
  end

  def self.authenticated
    authenticated
  end

  def self.authenticate(user_name, password)
    user = User.find_by({user_name:})
    user_password = Password.new(user.password)
    if user_password == password
      user
      authenticated = true
    end
  end

  private

  attr_accessor :authenticated
  authenticated = false
end
