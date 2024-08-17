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


### Epic Description
> Upload a fleet of vehicles and customers in CSV.

### User Story points
1. Upload a CSV files that includes vehicles and customers.
2. Display a table to present the data that we just uploaded.
3. Search by user name or vehicle model
4. CSV report for number of customers by nationality
5. CSV report for average odometer reading by nationality

### File format:

```
Name,Nationality,Email,Model,Year,ChassisNumber,Color,RegistrationDate,OdometerReading
Gemma,Kirke,gemma@kirke.me,Ford Focus,2018,123456789,Black,02/02/2018,30000
Jane Thomas,Australia,jane@thomas.me,Audi A4,2020,999999999,Green,02/01/2019,25000
Sam Johns,Belgium,sam@johns.me,BMW 4 Series,2017,111111111,White,05/01/2020,34000
Mehdi ,Elabd,mehdi@elabd.me,LEXUS IS 3000,2011,222222222,Black,02/01/2019,12300
Gemma,Kirke,gemma@kirke.me,INFINITI JX35,2011,444444444,Black,02/01/2019,12000
Jeni,Mohan,jeni@mohan.me,Audi A4,2018,555555555,White,05/04/2020,123000
Joseph,Sasank,joseph@sasank.me,Ford Focus,2020,888888888,Black,02/11/2019,34000
```
