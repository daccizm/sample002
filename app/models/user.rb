class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :unit
  has_one :company, :through => :unit

  def self.name_is name, company_id = nil
  	where("'users'.'name' LIKE ?", "%#{name}%").joins(:company).where(companies: {id: company_id})
  end

end
