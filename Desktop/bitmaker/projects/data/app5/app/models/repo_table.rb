class RepoTable < ApplicationRecord
  belongs_to :user
  belongs_to :repo
end
