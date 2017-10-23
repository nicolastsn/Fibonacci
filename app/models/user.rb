class User < ApplicationRecord
  include Clearance::User

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :st_number, presence: true
  validates :st_name, presence: true
  validates :zip, presence: true
  validates :city, presence: true

end
