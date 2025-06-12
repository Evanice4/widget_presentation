**Flutter ListView.separated Widget Demo**

WIDGET OVERVIEW
 - ListView.separated widget creates a scrollable list of items with separators between them.

ATTRIBUTES/ PROPERTIES OF ListView.separated WIDGET
 - itemCount(int): Defines the total number of items in the list. It's effective in controlling how many list item are rendered in your app.
 - itemBuilder: Builds each individual list item widget. It determines the layout and content of each list entry.
 - separatorBuilder: It's purpose is to create the separator widget between list items by adding visual dividers like lines or spacing between items.

HOW TO RUN:
 1. Clone this repository.
 2. Open terminal in the project directory.
 3. Run **flutter pub get** to install the dependencies.
 4. Start your emulator. 
 5. Run **flutter run** to start the app.
 6. The app will display a scrollable list of user profiles from your emulator.

REAL-WORLD USE CASE:
ListView.separated widget is mainly used when you want to display organised data, which we can find;
 - Contact lists (Phone contacts)
 - E-commerce Apps (product lists)
 - Chat applications (whatsapp message threads)
 - Setting menu (phone settings), etc

SCREENSHOT OF THE FINAL UI:
 - [App Demo](screenshot/final_UI.PNG)

SOURCE:
 - Youtube turtorial
 - Flutter dev website
