class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname, uniqueness: true
    validates :family_name, format: { with: /\A[ぁ-んァ-ヶ一-龥]+\z/ }
    validates :given_name, format: { with: /\A[ぁ-んァ-ヶ一-龥]+\z/ }
    validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :given_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
  end
end
