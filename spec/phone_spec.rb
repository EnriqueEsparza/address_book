require ('rspec')
require ('phone')

describe(Phone) do
  before() do
    Phone.clear()
  end
  describe("#area_code") do
    it("return area_code submitted for contact") do
      test_phone = Phone.new({:area_code => 312, :phone_number => 555-1234, :description => "home"})
      test_phone.save()
      expect(test_phone.area_code()).to(eq(312))
      end
    end
  describe('#save') do
    it('saves phone number into an array') do
      test_phone = Phone.new({:area_code => 312, :phone_number => 555-1234, :description => "home"})
      test_phone.save()
      expect(Phone.all()).to(eq([test_phone]))
      end
    end
  describe("#phone_number") do
    it("resturns phone number submitted for contact") do
      test_phone = Phone.new({:area_code => 312, :phone_number => 555-1234, :description => "home"})
      test_phone.save()
      expect(test_phone.phone_number()).to(eq(555-1234))
    end
  end
  describe("#description") do
    it("returns description of submitted phone") do
      test_phone = Phone.new({:area_code => 312, :phone_number => 555-1234, :description => "home"})
      test_phone.save()
      expect(test_phone.description()).to(eq("home"))
    end
  end
  describe(".all") do
    it("returns all phone info that has been saved") do
      test_phone = Phone.new({:area_code => 312, :phone_number => 555-1234, :description => "home"})
      test_phone.save()
      expect(Phone.all()).to(eq([test_phone]))
    end
  end
  describe(".clear") do
    it("clears all phone info in array") do
      expect(Phone.clear()).to(eq([]))
    end
  end


end
