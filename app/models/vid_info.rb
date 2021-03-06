# == Schema Information
#
# Table name: vid_infos
#
#  id               :integer          not null, primary key
#  video_id         :string(255)
#  provider         :string(255)
#  title            :string(255)
#  duration         :string(255)
#  date             :date
#  thumbnail_small  :string(255)
#  thumbnail_medium :string(255)
#  thumbnail_large  :string(255)
#  embed_url        :string(255)
#  embed_code       :string(255)
#  width            :string(255)
#  height           :string(255)
#  keywords         :string(255)
#  video_owner      :string(255)
#  view_count       :string(255)
#  url              :string(255)
#  spot_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  data             :binary
#  description      :text
#

class VidInfo < ActiveRecord::Base
  attr_accessible :date, :description, :duration,
           :embed_code, :embed_url, :height, :keywords,
           :provider, :thumbnail_large, :thumbnail_medium,
           :thumbnail_small, :title, :url, :video_id,
           :video_owner, :view_count, :width, :spot_id
  validates :spot, :presence => true
  belongs_to :spot
end
