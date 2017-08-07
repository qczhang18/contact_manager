require 'rails_helper'

RSpec.feature "EmailAddresses", type: :feature do
  let(:person) { create(:person, first_name: 'John', last_name: 'Doe') }

  before(:each) do
    person.email_addresses.create(address: "qczhang18@gmail.com")
    visit person_path(person)
  end

  it 'shows the email address' do
    person.email_addresses.each do |email|
      expect(page).to have_content(email.address)
    end
  end

end
