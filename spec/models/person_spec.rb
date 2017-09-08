require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:person) do
    Person.new(first_name: 'Alice', last_name: 'Smith')
  end

  it 'is valid with first_name and last_name' do
    expect(person).to be_valid
  end

  it 'is invalid without a first_name' do
    person.first_name = nil
    expect(person).to be_invalid
  end

  it 'is invalid without a last_name' do
    person.last_name = nil
    expect(person).to be_invalid
  end

  it 'is has an array of email addresses' do
    expect(person.email_addresses).to eq([])
  end

end
