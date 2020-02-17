# frozen_string_literal: true

class Contact
  include Mongoid::Document
  include Mongoid::Timestamps
  field :email, type: String
  field :name, type: String
  field :guid, type: String

  validates :email, :name, presence: true
  validates :email, uniqueness: true
end
