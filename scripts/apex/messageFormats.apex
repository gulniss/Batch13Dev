// JSON Format
{
    'Name' : 'Nara',
    'Age' : 18,
    'Title' : 'Developer',
    'Salary' : 120000,
    'Adress' : {
        'City' : 'New Jersey',
        'Country' : 'USA'
    }
}

// XML Format
<Contact>
    <Name>Nara</Name>
    <Age>18</Age>
    <Title> Developer</Title>
</Contact>

Account acc = [SELECT Name, Type, Industry, AnnualRevenue
                FROM Account
                WHERE AnnualRevenue != null AND Industry != null AND Type != null LIMIT 1];

// Serialization => to convert APEX Object to JSON format
// Deserialization => to convert JSON format to APEX Object

String jsonString = JSON.serialize(acc);
system.debug(jsonString);

List<Account> accList = [SELECT Name, Type, Industry, AnnualRevenue
                FROM Account
                WHERE AnnualRevenue != null AND Industry != null AND Type != null];

string jsonListString = JSON.serialize(accList);
system.debug(jsonListString);
