# frozen_string_literal: true

require 'rails_helper'

describe Team do
  context 'validations' do
    it 'requires a name' do
      expect{ Team.create! }.to raise_error ActiveRecord::RecordInvalid
    end
  end
end
