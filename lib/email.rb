class Email
  attr_reader(:email_address, :email_description)
  @@emails = []
  define_method(:initialize) do |attributes|
    @email_address = attributes.fetch(:email_address)
    @email_description = attributes.fetch(:email_description)
  end
  define_method(:save) do
    @@emails.push(self)
  end
  define_singleton_method(:all) do
    @@emails
  end
  define_singleton_method(:clear) do
    @@emails = []
  end
end
