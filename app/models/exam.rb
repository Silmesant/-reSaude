class Exam < ApplicationRecord
  belongs_to :address
  has_many :consutation_exams
  has_many :consultations, through: :consultation_exams
end
