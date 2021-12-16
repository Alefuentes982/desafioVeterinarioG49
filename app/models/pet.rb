class Pet < ApplicationRecord
  belongs_to :client
  has_many :pet_histories
  accepts_nested_attributes_for :pet_histories, :client

  def visits
    pet_histories.count
  end

  def avgw
    pet_histories.average(:weight)
  end

  def avgh
    pet_histories.average(:height)
  end

  def maxw
    pet_histories.maximum(:weight)
  end

  def maxh
    pet_histories.maximum(:height)
  end
  
  def owner
    client.name
  end

  

end
