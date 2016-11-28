class Plan < ApplicationRecord
has_many :comments
validates :plan_no,presence: true
validates :plan_name,presence: true
validates :company_name,presence: true
validates :duration,presence: true
validates :bonus,presence: true
validates :roi,presence: true
end
