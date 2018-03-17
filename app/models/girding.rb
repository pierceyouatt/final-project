# == Schema Information
#
# Table name: girdings
#
#  id         :integer          not null, primary key
#  armor_id   :integer
#  pc_id      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Girding < ApplicationRecord
  belongs_to :pc
  belongs_to :armor
end
