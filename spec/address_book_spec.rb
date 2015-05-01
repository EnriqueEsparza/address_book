require ('rspec')
require ('address_book')
require ('email')
require ('phone')

describe(Contact) do
  before() do
    Contact.clear()
  end
  describe("#first_name") do
    it("returns the first name of contact") do
      test_contact = Contact.new({:first_name => "John", :last_name => "Smith", :birth_year => 1982})
      test_contact.save()
      expect(test_contact.first_name()).to(eq("John"))
    end
  end

  describe("#save") do
    it("saves contact info into array") do
      test_contact = Contact.new({:first_name => "John", :last_name => "Smith", :birth_year => 1982})
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe(".clear") do
    it("clears contact info array") do
      expect(Contact.clear()).to(eq([]))
    end
  end

  describe("#last_name") do
    it("returns last name of contact") do
    test_contact = Contact.new({:first_name => "John", :last_name => "Smith", :birth_year => 1982})
    test_contact.save()
      expect(test_contact.last_name()).to(eq("Smith"))
    end
  end

  describe("#birth_year") do
    it("returns birth year of contact") do
      test_contact = Contact.new({:first_name => "John", :last_name => "Smith", :birth_year => 1982})
      test_contact.save()
      expect(test_contact.birth_year()).to(eq(1982))
    end
  end

  describe(".all") do
    it("returns all saved contacts") do
      test_contact = Contact.new({:first_name => "John", :last_name => "Smith", :birth_year => 1982})
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end
  describe("#user_id") do
    it("returns the id of the contact") do
      test_contact = Contact.new({:first_name => "John", :last_name => "Smith", :birth_year => 1982})
      test_contact.save()
      expect(test_contact.user_id()).to(eq(1))
    end
  end

  describe(".find") do
    it("returns a contact by their id number") do
      test_contact = Contact.new({:first_name => "John", :last_name => "Smith", :birth_year => 1982})
      test_contact.save()
      test_contact2 = Contact.new({:first_name => "John", :last_name => "Wilson", :birth_year => 1967})
      test_contact2.save()
      expect(Contact.find(test_contact.user_id())).to(eq(test_contact))
    end
  end


end
