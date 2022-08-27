# frozen_string_literal: true

class User < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true

  has_many :memberships, foreign_key: :user_id
  has_many :teams, through: :memberships
end
