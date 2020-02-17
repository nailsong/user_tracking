require 'rails_helper'

RSpec.describe Contact, type: :model do
  it 'is valid with valid attributes' do
    params = {name: 'foo', email: 'foo@foo.com', guid: '2029-9292'}
    expect(Contact.new(params)).to be_valid
  end

  it 'is not valid without a guid' do
    contact = Contact.new(email: nil)
    expect(contact).to_not be_valid
  end
  
  it 'is not valid without a url' do
    contact = Contact.new(name: nil)
    expect(contact).to_not be_valid
  end

  it 'is not valid without a timestamp' do
    contact = Contact.new(guid: nil)
    expect(contact).to_not be_valid
  end
end

