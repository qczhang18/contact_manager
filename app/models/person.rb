class Person < ApplicationRecord
  has_many :email_addresses

  validates :first_name, :last_name, presence: true
end
