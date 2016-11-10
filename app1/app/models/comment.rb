class Comment < ApplicationRecord
belongs_to :plan
validates :plan_no,presence: true
validates :client_id,presence: true
validates :desc,presence: true
end
