class Phone
attr_reader(:area_code, :phone_number, :description)
@@numbers =[]
define_method(:initialize) do |attributes|
  @area_code = attributes.fetch(:area_code)
  @phone_number = attributes.fetch(:phone_number)
  @description = attributes.fetch(:description)
end
define_method(:save) do
  @@numbers.push(self)
  end
define_singleton_method(:all) do
  @@numbers
end
define_singleton_method(:clear) do
  @@numbers = []
end
end
