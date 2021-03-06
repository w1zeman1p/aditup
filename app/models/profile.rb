# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ActiveRecord::Base
  include Traitable
  attr_accessible :user_id
  validates :user, :presence => true
  belongs_to :user
end
