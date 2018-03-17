# == Schema Information
#
# Table name: weapons
#
#  id         :integer          not null, primary key
#  name       :string
#  simple     :boolean
#  ranged     :boolean
#  mindamage  :integer
#  maxdamage  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Weapon < ApplicationRecord
  has_many :wieldings, :dependent => :destroy
  has_many :mobs, :dependent => :destroy
end
