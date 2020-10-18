class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :consultations, dependent: :destroy
  # quando um usuário for deletado, todas as consultas dele também serão.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
