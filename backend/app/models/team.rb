# frozen_string_literal: true

class Team < ApplicationRecord
  validates :name, presence: true

  has_many :memberships, foreign_key: :team_id
  has_many :players, through: :memberships, source: :user
end
