class User < ApplicationRecord

  has_many :games

  has_secure_password

end
