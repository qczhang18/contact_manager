require 'rails_helper'

RSpec.describe EmailAddress, type: :model do
  it 'is valid with presence of address attribute' do
    email_address = FactoryGirl.create(:email_address)
    expect(email_address).to be_valid
  end

  it 'is invalid without presence of address attribute ' do
    email_address = FactoryGirl.create(:email_address)
    email_address.address = nil
    expect(email_address).to be_invalid
  end

end
