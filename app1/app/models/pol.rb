class Pol < ApplicationRecord
belongs_to :customer
validates :client_id,presence: true
validates :nominee,presence: true
validates :sum_insured,presence: true

end
