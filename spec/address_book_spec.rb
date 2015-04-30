require ('rspec')
require ('address_book')

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







end
