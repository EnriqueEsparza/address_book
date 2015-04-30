require('rspec')
require('email')

describe(Email) do
  before() do
    Email.clear()
  end
  describe('#email_address') do
    it('returns the email address of a contact') do
    test_email = Email.new({:email_address => "example@yahoo.com", :email_description => "Work"})
    test_email.save()
    expect(test_email.email_address()).to(eq("example@yahoo.com"))
  end
end
  describe('#email_description') do
    it('returns the email description of a contact') do
      test_email = Email.new({:email_address => "example@yahoo.com", :email_description => "Work"})
      test_email.save()
      expect(test_email.email_description()).to(eq("Work"))
  end
end
  describe('#save') do
    it('save emails into an array') do
      test_email = Email.new({:email_address => "example@yahoo.com", :email_description => "Work"})
      test_email.save()
      expect(Email.all()).to(eq([test_email]))
    end
  end
  describe('.all') do
    it('desplay all the emails saved') do
      test_email = Email.new({:email_address => "example@yahoo.com",  :email_description => "Work"})
      test_email.save()
      expect(Email.all()).to(eq([test_email]))
    end
  end
  describe('.clear') do
    it('empties all saved emails') do
      test_email = Email.new({:email_address => "example@yahoo.com", :email_description => "Work"})
      expect(Email.clear()).to(eq([]))
    end
  end
end
