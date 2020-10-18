class ConsultationExam < ApplicationRecord
  belongs_to :consultation
  belongs_to :exam
  belongs_to :address
end
