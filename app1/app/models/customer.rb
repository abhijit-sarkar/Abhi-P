class Customer < ApplicationRecord
has_many :pols

validates :client_id,presence: true
validates :cname,presence: true
validates :contact,presence: true
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
validates :email,presence: true,format: {with: VALID_EMAIL_REGEX}
end
