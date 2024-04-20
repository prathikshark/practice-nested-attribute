class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   
  has_one :customer, dependent: :destroy
  accepts_nested_attributes_for :customer

  has_one :worker, inverse_of: :user
  accepts_nested_attributes_for :worker

   enum role:[:customer,:worker,:admin]

  after_initialize :set_default_role, :if => :new_record?
    
  def set_default_role
      self.role||=:customer
  end

  def with_user_information
    build_user_information if user_information.nil?
    self
  end 
end
