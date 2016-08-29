class Event < ApplicationRecord
  has_many :users
  has_many :events through :rsvps
end
