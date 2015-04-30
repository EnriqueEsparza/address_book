require ('rspec')
require ('phone')

describe(Phone) do
  before() do
    Phone.clear()
  end
  describe("#area_code") do
    it("return area_code submitted for contact")do
      test_phone = Phone.new({:area_code => "312", :phone_number => "555-1234", :description => "home"})
      test_phone.save()
      expect(test_phone.area_code()).to(eq("312"))
      end
    end
  describe('#save') do
    it('saves phone number into an array') do
      test_phone = Phone.new({:area_code => 312, :phone_number => 555-1234, :description => "home"})
      test_phone.save()
      expect(Phone.all()).to(eq([test_phone]))
end
end
# describe('#clear') do
#   @@numbers = []
end
