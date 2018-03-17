# == Schema Information
#
# Table name: armors
#
#  id         :integer          not null, primary key
#  name       :string
#  armortype  :string
#  armorac    :integer
#  armorstr   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Armor < ApplicationRecord
  has_many :girdings, :dependent => :destroy
  has_many :mobs, :dependent => :destroy
end
