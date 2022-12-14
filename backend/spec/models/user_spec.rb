# frozen_string_literal: true

require 'rails_helper'

describe User do
  context 'validations' do
    it 'requires a first_name' do
      expect do
        User.create!(last_name: 'McTestface', email: 'test@example.com')
      end.to raise_error ActiveRecord::RecordInvalid
    end

    it 'requires a last_name' do
      expect { User.create!(first_name: 'Test', email: 'test@example.com') }.to raise_error ActiveRecord::RecordInvalid
    end

    it 'requires an email' do
      expect { User.create!(first_name: 'Test', last_name: 'McTestface') }.to raise_error ActiveRecord::RecordInvalid
    end
  end
end
