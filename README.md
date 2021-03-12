### Commands Used

##### New App Creation With Rails Version 5.2.4.5

> rails _5.2.4.5_ new fleetmanagement -d postgresql -T

##### Generating Models

> bin/rails g model Customer name nationality email  

> bin/rails g model Vehicle model year:integer chassis_number:integer color registration_date:datetime odometer_reading:integer customer:references

> bin/rails db:migrate


##### Generating Controllers

> bin/rails g controller Pages home --no-helper --no-assets --no-controller-specs --no-request-specs –no-view-specs

> bin/rails g controller Vehicles --no-assets --no-helper --no-controller-specs --no-request-specs –no-view-specs


##### Testing With RSpec

> bundle exec rspec

##### Start Server 

> bin/rails s