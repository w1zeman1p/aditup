# == Schema Information
#
# Table name: clients
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  account_manager_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Client < ActiveRecord::Base
  attr_accessible :account_manager_id, :name
  validates :account_manager, :presence => true
  belongs_to :account_manager
  has_many :spots
end
