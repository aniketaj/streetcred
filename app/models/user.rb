class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :critiques

  validates :firstname, :presence=>true
  validates :lastname, :presence=>true
  validates :funcexpert, :presence=>true
  validates :indexpert, :presence=>true



end
