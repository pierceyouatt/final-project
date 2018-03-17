# == Schema Information
#
# Table name: wieldings
#
#  id         :integer          not null, primary key
#  weapon_id  :integer
#  pc_id      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Wielding < ApplicationRecord
  belongs_to :pc
  belongs_to :weapon
end
