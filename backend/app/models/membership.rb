# frozen_string_literal: true

class Membership < ApplicationRecord
  enum role: {
      unassigned: 0,
      player: 1,
      coach: 2,
      staff: 3
  }, _suffix: true

  belongs_to :user
  belongs_to :team
end
