class User < ApplicationRecord
  has_many :repo_tables
  has_many :repos, through :repo_tables
end
