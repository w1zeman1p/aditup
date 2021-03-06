# == Schema Information
#
# Table name: trait_joins
#
#  id             :integer          not null, primary key
#  trait_id       :integer
#  traitable_id   :integer
#  traitable_type :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class TraitJoin < ActiveRecord::Base
  attr_accessible :trait_id, :traitable_id, :traitable_type
  validates_uniqueness_of :trait_id, :scope => [:traitable_id, :traitable_type]
  belongs_to :traitable, :polymorphic => true
  belongs_to :trait
end
