class User < ApplicationRecord

  # let's call a method that adds a bunch of functionality to making sure this is a secure password
  has_secure_password

  validates :name, :email,  presence: true

end
