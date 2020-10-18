class Consultation < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  belongs_to :address
  belongs_to :exam
  has_many :health_problems
  has_many :treatments
  has_many :consultation_exams
  has_many :exams, through: :consultation_exams


end
