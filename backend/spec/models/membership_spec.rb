# frozen_string_literal: true

describe Membership do
  let(:user) { User.create!(first_name: 'Frank', last_name: 'Fly', email: 'frank.fly@test.com') }
  let(:team) { Team.create!(name: 'Dallas Testboys') }

  before do
    team
  end

  Membership.roles.each do |role_name, value|
    it "can have a role of #{role_name}" do
      user
      expect { team.memberships.create(user: user, role: role_name) }.to change { team.memberships.count }.by(1)
      expect(user.memberships.first.role).to eq(role_name)
    end
  end
end
