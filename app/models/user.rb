class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname, uniqueness: true
    with_options format: { with: /\A[ぁ-んァ-ヶ一-龥]+\z/ } do
      validates :family_name
      validates :given_name
    end
    with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
      validates :family_name_kana
      validates :given_name_kana
    end
  end

  validates :born_date_before_type_cast, date_check: true
end
