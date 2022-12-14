# frozen_string_literal: true

require 'rails_helper'

xdescribe '/teams', type: :request do
  describe 'GET /index' do
    it 'renders a successful response' do
      get '/teams'

      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    it 'renders a successful response' do
      post '/teams', params: { team: {} }

      expect(response).to be_successful
    end
  end
end
