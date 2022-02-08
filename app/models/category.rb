class Category < ApplicationRecord
  has_many :product

  def to_param  # overridden
    "#{id}-#{title.parameterize}"
  end
end

