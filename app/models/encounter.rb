# == Schema Information
#
# Table name: encounters
#
#  id          :integer          not null, primary key
#  campaign_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string
#

class Encounter < ApplicationRecord
  belongs_to :campaign
  has_many :mobs, :dependent => :destroy
end
