require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "is a person" do
    expect{Contact.new}.to_not raise_error
  end
  it "has a name" do
    contact = Contact.new
    contact.name = 'Gary'
    contact.last_name = 'Snail'
    contact.email = 'GarySnail@home.com'
    contact.address = '101 Shell Lane'
    expect(contact.save).to eq true
    u1 = Contact.find_by_name ("Gary")
    expect(u1.name).to eq 'Gary'
    expect(u1.last_name).to eq 'Snail'
    expect(u1.email).to eq 'GarySnail@home.com'
    expect(u1.address).to eq '101 Shell Lane'
  end
end
