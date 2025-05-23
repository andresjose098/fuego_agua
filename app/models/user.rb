class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #devise :database_authenticatable, :registerable,
   #      :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #devise :database_authenticatable, :registerable,
   #      :recoverable, :rememberable, :validatable
  # has_many :velas, dependent: :destroy
  has_secure_password  # ⚠️ Este solo lo necesitas si NO usas Devise
  #has_many :compras

  def admin?
    role == "admin"
  end
end
