class Film < ApplicationRecord
  belongs_to :actor
  belongs_to :director
end
