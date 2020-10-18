class Address < ApplicationRecord
    has_many :consultations
    has_many :hospitalizations
end
