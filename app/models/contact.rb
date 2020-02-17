# frozen_string_literal: true

class Contact
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :guid, type: String
end
