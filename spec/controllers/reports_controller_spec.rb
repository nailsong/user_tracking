# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ReportsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}

      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      report_params = {
        guid: '822-993',
        timestamp: 2992,
        url: 'http://0.0.0.0/home'
      }

      get :index, params: report_params

      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    it "with valid params" do
      report_count = Report.count

      report_params = {
        url: 'http://0.0.0.0:3000/home',
        guid: '333-eee-222-002',
        timestamp: '939304943'
      }

      post :create, params: { report: report_params }

      expect(Report.count).to eq(report_count + 1)
    end

    it 'with invalid params' do
      report_params = {url: 'url'}

      post :create, params: { report: report_params }

      expect(response).to have_http_status(500)
    end
  end
end
