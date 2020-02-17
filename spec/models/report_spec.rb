require 'rails_helper'

RSpec.describe Report, type: :model do
  it 'is valid with valid attributes' do
    params = { guid: '822-993', timestamp: 2992, url: 'http://0.0.0.0/home'}
    expect(Report.new(params)).to be_valid
  end

  it 'is not valid without a guid' do
    report = Report.new(guid: nil)
    expect(report).to_not be_valid
  end
  
  it 'is not valid without a url' do
    report = Report.new(timestamp: nil)
    expect(report).to_not be_valid
  end

  it 'is not valid without a timestamp' do
    report = Report.new(url: nil)
    expect(report).to_not be_valid
  end
end

