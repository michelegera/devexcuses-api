# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Excuses API', type: :request do
  describe 'GET /excuses' do
    before { get '/excuses' }

    it 'returns excuses' do
      expect(json).not_to be_empty
      expect(json.size).to eq(5)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /excuses/:id' do
    before { get "/excuses/#{excuse_id}" }

    context 'when the record exists' do
      let(:excuse_id) { 1 }

      it 'returns the excuse' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(excuse_id)
        expect(json['text']).to be_present
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

  # The payload is serialized by Blueprinter before it reaches Rails, so the
  # excuse text is emitted verbatim: no HTML escaping is applied to it. This
  # pins that contract so a serializer change cannot silently mangle the API
  # output.
  describe 'GET /excuses/:id with HTML-sensitive characters' do
    before do
      allow(Excuse).to receive(:find).and_return(
        Excuse.new(id: 1, text_en: 'Fish & chips <b>bold</b>')
      )
      get '/excuses/1'
    end

    it 'returns the text verbatim, without HTML escaping' do
      expect(response.body).to include('Fish & chips <b>bold</b>')
      expect(response.body).not_to include('\u0026')
      expect(response.body).not_to include('\u003c')
    end
  end
end
