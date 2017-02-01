class Pet < ApplicationRecord
  has_many :toys

  def shortest_named_toy
    toys.order("LENGTH(description)").first
  end

  def longest_named_toy
    toys.order("LENGTH(description) DESC").first
  end
end
