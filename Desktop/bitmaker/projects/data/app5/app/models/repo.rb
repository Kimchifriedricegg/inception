class Repo < ApplicationRecord
  has_many :repo_tables
  has_many :users, through :repo_tables
end
