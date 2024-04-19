class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   
  has_one :customer, dependent: :destroy
  accepts_nested_attributes_for :customer

   enum role:[:customer,:worker,:admin]

  after_initialize :set_default_role, :if => :new_record?
    
  def set_default_role
      self.role||=:customer
  end
end