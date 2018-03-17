# == Schema Information
#
# Table name: quests
#
#  id          :integer          not null, primary key
#  campaign_id :integer
#  pc_id       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Quest < ApplicationRecord
  belongs_to :campaign
  belongs_to :pc
end
