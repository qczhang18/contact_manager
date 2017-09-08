require 'rails_helper'

RSpec.describe EmailAddress, type: :model do
  let (:email_address) do
    create(:email_address)
  end

  it 'is valid with presence of address attribute' do
    expect(email_address).to be_valid
  end

  it 'is invalid without presence of address attribute ' do
    email_address.address = nil
    expect(email_address).to be_invalid
  end

  it 'is associated with a person' do
    expect(email_address).to respond_to(:person)
  end

end
