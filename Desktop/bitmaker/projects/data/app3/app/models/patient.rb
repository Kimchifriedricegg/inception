class Patient < ApplicationRecord
  has_many :appintments
  has_many :doctors, through :appointments
end
