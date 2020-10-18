class Treatment < ApplicationRecord
  belongs_to :health_problem
  belongs_to :medicine
  belongs_to :consultation
end
