class Hospitalization < ApplicationRecord
  belongs_to :health_problem
  belongs_to :address
end
