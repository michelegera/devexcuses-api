# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Excuses API', type: :request do
  let!(:excuses) { create_list(:excuse, 10) }
  let(:excuse_id) { excuses.first.id }

  describe 'GET /excuses' do
    before { get '/excuses' }

    it 'returns excuses' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /excuses/:id' do
    before { get "/excuses/#{excuse_id}" }

    context 'when the record exists' do
      it 'returns the excuse' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(excuse_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:excuse_id) { 1_000 }

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Excuse/)
      end

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
    end
  end

  describe 'GET /excuses/random' do
    before { get '/excuses/random' }

    it 'returns a random excuse' do
      expect(json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
