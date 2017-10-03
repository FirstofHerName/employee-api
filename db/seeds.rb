# 100.times do 
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   Employee.create(
#                   first_name: first_name,
#                   last_name: last_name,
#                   email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
#                   ssn: Faker::Medical::SSN.ssn,
#                   birthdate: Faker::Date.between(18.years.ago, 65.years.ago)
#                   )
# end


employees_id = Employee.all.map { |employee| employee.id }

employee_ids.each do |id|
  rand(1..3).times do
    Address.create(
                  address_1: Faker::Address.street_adress,
                  adress_2: Faker::Address.secondary_address,
                  city: Faker::Adress.city,
                  state: Faker::Address.state
                  zip: Faker::Address.zip
                  employee_id: id
                  ) 
end