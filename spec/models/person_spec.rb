require 'rails_helper'

RSpec.describe Person, type: :model do
  it 'is valid with first_name and last_name' do
    person = Person.new(first_name: 'John', last_name: 'Doe')
    expect(person).to be_valid
  end

  it 'is invalid without a first_name' do
    person = Person.new(first_name: nil)
    expect(person).to be_invalid
  end

  it 'is invalid without a last_name' do
    person = Person.new(last_name: nil)
    expect(person).to be_invalid
  end
end
