# == Schema Information
#
# Table name: pcs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  str        :integer
#  strmod     :integer
#  dex        :integer
#  dexmod     :integer
#  con        :integer
#  int        :integer
#  wis        :integer
#  cha        :integer
#  shield     :boolean
#  ac         :integer
#  initiative :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

class Pc < ApplicationRecord
  belongs_to :user
  has_many :quests, :dependent => :destroy
  has_many :wieldings, :dependent => :destroy
  has_many :girdings, :dependent => :destroy
  has_many :campaigns, through: :quests
  has_many :armors, through: :girdings
  has_many :weapons, through: :wieldings
end
