/* Assignment – 19
•	Create a class Trigger_Map
o	Create a method InsertSF_Project.
	Insert a new record of Salesforce Project (Salesforce_Project__c)
	Method should return Id of the newly created Salesforce Project.
•	Create a method UpdateSF_Project.
	The method accepts 2 inputs, one is the Id and second one is the name. (Choose data type accordingly)
	Update the Project_Name__c field with the value received in name input.

•	Create a trigger on Salesforce_Project__c
•	Trigger should work on before update,before insert,after insert,after update.
•	Use the Trigger.New on insert and set the name of Project as ‘New Trigger Project’ before insert. Use system.debug to display the project name.
•	Use Trigger.newMap and Trigger.newMap on update. Use for loop on the map variable and use system.debug to display the project name before update and project name after update.


•	Create an anonymous apex.
•	Create an instance of Trigger_Map.
•	Call InsertSF_Project and keep it’s return value in a new variable.
(Hint : The return value will be Id so it can be stored in Id as well as String)
•	Print the Id using System.debug
•	Call UpdateSF_Project and pass Id (received from InsertSF_Project) and Name as ‘Updated Trigger Project’.

*/
public class Trigger_Map {
    
}