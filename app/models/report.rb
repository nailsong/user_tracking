# frozen_string_literal: true

class Report
  include Mongoid::Document
  field :guid, type: String
  field :timestamp, type: Integer
  field :url, type: String

  validates :guid, :timestamp, :url, presence: true
end
