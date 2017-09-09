require 'rails_helper'

RSpec.feature "Person View", type: :feature do
  let(:person) { create(:person) }

  before(:each) do
    person.email_addresses.create(address: "qczhang18@gmail.com")
    person.email_addresses.create(address: "aznyqjai@gmail.com")
    visit person_path(person)
  end

  it 'shows the email address' do
    person.email_addresses.each do |email|
      expect(page).to have_content(email.address)
    end
  end

  it 'has a link to add a new email address' do
    expect(page).to have_link('Add email', href: new_email_address_path(person_id: person.id))
  end

  it 'adds a new email address' do
    page.click_link('Add email')
    page.fill_in('Address', with: 'demo@gmail.com')
    page.click_button('Create Email address')
    expect(current_path).to eq(person_path(person))
    expect(page).to have_content('demo@gmail.com')
  end

  it 'has links to edit email address' do
    person.email_addresses.each do |email|
      expect(page).to have_link('edit', href: edit_email_address_path(email))
    end
  end

end
