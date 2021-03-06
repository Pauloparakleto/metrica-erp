require 'rails_helper'

RSpec.describe Category, type: :model do

  it 'save the correct data' do
    category = create(:category)
    expect(category).to be_valid
  end

  it 'save without account' do
    category = Category.new(name: FFaker::Internet.slug)
    expect(category).to_not be_valid
  end

  it 'category is not valid without name' do
    account = create(:account)
    category = Category.new(name: nil, account_id: account.id)
    expect(category).to_not be_valid
  end
end
