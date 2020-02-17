# frozen_string_literal: true

json.extract! report, :id, :url, :guid, :timestamp, :contact_id, :created_at
json.url report_url(report, format: :json)
