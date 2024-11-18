
**Project Documentation: Contacts Application**

*Overview*

The goal of this project is to build a Contacts Application that displays contact information retrieved from a local JSON file named Contact.json. The JSON data will be parsed into a model structure to be displayed in the application. The architecture will follow the MVVM (Model-View-ViewModel) pattern combined with Protocol-Oriented Programming (POP) principles.
In the project, you will implement delegation to enable communication between the ViewModel and ViewController, ensuring data updates are reflected in the UI.

**Application Screens and Flow**

1. ***Main Screen***
* This screen displays a list of contact names in a simple, clean format.
* Each list item only shows the contact's name.
* When a user taps on a contact's name, they are navigated to the User Detail screen for that contact.
Example Design:
* A basic list view with names (e.g., "Carson", "Maria", "Ben").
* Tap functionality for each name to open the detailed view.


2. ***User Detail Screen***
* This screen provides detailed information about the selected contact.
* The details displayed include:
    * Name: The full name of the contact.
    * Phone: The contact's phone number.
    * Email: The contact's email address.
* For any missing or empty fields, display "N/A".
Example Design:
* A label structure or list format showing the contact's name, phone number, and email.
* Consistent spacing and alignment for an organized, readable layout.


**Technical Requirements**

***Data Handling***
1. JSON Parsing:
    * Parse data from Contact.json and map it to the appropriate model structure.
    * Ensure to handle any errors that may arise during the parsing process to prevent crashes and maintain data integrity.
2. Model Structure:
    * Define a model that represents the contact data in Contact.json, including properties for the contact's name, phone, and email.
    * Ensure the model structure aligns with the JSON format for seamless data mapping.


**Architecture**
1. MVVM + POP:
    * Implement the MVVM architecture along with Protocol-Oriented Programming to ensure modular, maintainable, and reusable code.
    * Utilize protocols to define the expected behaviors and interactions within each module, ensuring loose coupling.
2. Delegation:
    * Use delegates to communicate data changes from the ViewModel to the ViewController.
    * This setup will help manage the data flow and keep the UI updated based on model changes.

**Error Handling**
* Implement comprehensive error handling when parsing the JSON data. This includes handling missing or malformed data and logging errors if they occur.


**Example Data Flow**
1. Main Screen:
    * Loads contact names from Contact.json.
    * Displays names in a list format.
    * Navigates to the User Detail screen upon selection.
2. User Detail Screen:
    * Fetches and displays full details for the selected contact.
    * For any missing fields in the data, displays "N/A" as a placeholder.



![Example image](https://github.com/habiboff/TaskManagement/blob/master/iPhone%2016%20Pro%20-%201.png)![](https://github.com/habiboff/TaskManagement/blob/master/iPhone%2016%20Pro%20-%202.png)
