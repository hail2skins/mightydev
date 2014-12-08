# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  business_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Service < ActiveRecord::Base
  belongs_to :business
  belongs_to :package
  
  has_many :prices, as: :cost
  accepts_nested_attributes_for :prices
  
  validates_presence_of :name
end
