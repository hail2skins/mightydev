# == Schema Information
#
# Table name: phones
#
#  id             :integer          not null, primary key
#  number         :string(10)
#  phoneable_id   :integer
#  phoneable_type :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Phone < ActiveRecord::Base
  belongs_to :phoneable, polymorphic: true

  validates :number, numericality: { only_integer: true }, length: { is: 10 }, allow_blank: true
end
