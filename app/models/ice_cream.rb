class IceCream < ActiveRecord::Base

  attr_accessible :cone_for_cup_id, :flavor_id,  :total_number , :user_id , :extra_ids

  belongs_to :user
  belongs_to :flavor
  belongs_to :cone_for_cup

end
