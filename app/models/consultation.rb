class Consultation < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  belongs_to :address
  belongs_to :exam
  belongs_to :health_problem
end
