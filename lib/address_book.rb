class Contact
  attr_reader(:first_name, :last_name, :birth_year)
  @@contacts = []

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @birth_year = attributes.fetch(:birth_year)
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end
  define_singleton_method(:clear) do
    @@contacts = []
end
end