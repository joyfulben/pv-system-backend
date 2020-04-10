class User < ApplicationRecord
  has_secure_password(attribute = :password, validations: true)
  has_many :site_outputs
end
