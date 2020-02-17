# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}

      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Contact' do
        contacts_count = Contact.count

        contact_params = {
          name: 'foo',
          email: 'foo@foo.com'
        }

        post :create, params: { contact: contact_params }

        expect(Contact.count).to eq(contacts_count + 1)
      end

      it 'redirects to the created contact' do
        contact_params = {
          name: 'foo',
          email: 'foo@foo.com'
        }

        post :create, params: { contact: contact_params }

        expect(response).to redirect_to(Contact.last)
      end
    end

    context 'with invalid params' do
      it 'returns a error' do
        contact_params = { name: 'test' }

        post :create, params: { contact: contact_params }

        expect(response).to have_http_status(500)
      end
    end
  end
end
