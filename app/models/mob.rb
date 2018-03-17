# == Schema Information
#
# Table name: mobs
#
#  id           :integer          not null, primary key
#  name         :string
#  encounter_id :integer
#  weapon_id    :integer
#  armor_id     :integer
#  initiative   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  hp           :integer
#

class Mob < ApplicationRecord
  belongs_to :encounter
  belongs_to :weapon

end
