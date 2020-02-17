# frozen_string_literal: true

class Report
  include Mongoid::Document
  field :url, type: String
  field :guid, type: String
  field :timestamp, type: Integer
  embedded_in :contact
end
