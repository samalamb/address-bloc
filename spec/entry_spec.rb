require_relative '../models/entry'

RSpec.describe Entry do
  describe "atrributes" do
    entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

    it "responds to name" do
      expect(entry).to respond_to(:name)
    end

    it "reports it's name" do
      expect(entry.name).to eq('Ada Lovelace')
    end

    it "responds to phone number" do
      expect(entry).to respond_to(:phone_number)
    end

    it "reports it's phone number" do
      expect(entry.phone_number).to eq('010.012.1815')
    end

    it "responds to email" do
      expect(entry).to respond_to(:email)
    end

    it "reports to email" do
      expect(entry.email).to eq('augusta.king@lovelace.com')
    end
  end

  describe "#to_s" do
    let(:entry) { Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com') }

     it "prints an entry as a string" do
       expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"

       expect(entry.to_s).to eq(expected_string)
     end
  end
end
