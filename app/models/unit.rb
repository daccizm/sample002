class Unit < ActiveRecord::Base
  belongs_to :company
  has_many   :users
  accepts_nested_attributes_for :users
end
