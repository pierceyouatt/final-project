# == Schema Information
#
# Table name: campaigns
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

class Campaign < ApplicationRecord
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  has_many :encounters, :dependent => :destroy
  has_many :quests, :dependent => :destroy
  has_many :pcs, through: :quests
end
