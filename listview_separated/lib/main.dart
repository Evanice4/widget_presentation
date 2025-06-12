import 'package:flutter/material.dart';


/// User model class to hold user data
class User {
  final String name;
  final String image;
  final String profession;

  User(this.name, this.profession, this.image);
}

class ListViewBuilderTest extends StatelessWidget {
  const ListViewBuilderTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.separated'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView.separated(

        /// Tells ListView how many items to display
        itemCount: users.length,

        /// Function that builds the separator between each item
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(height: 1);
        },

        /// Function that builds each individual list item
        itemBuilder: (BuildContext context, int index) {
          return ListTile(

            leading: CircleAvatar(
              backgroundImage: AssetImage(
                users[index].image,
              ),
            ), // CircleAvatar

            title: Text(users[index].name),
            subtitle: Text(users[index].profession),

          ); // ListTile
        },
      ), // ListView.separated
    ); // Scaffold
  }
}

/// Sample data - List of users
List<User> users = [
  User('Eva Nice', 'Web Developer', 'lib/assets/images/face1.jpg'),
  User('Eva Nice', 'Flutter Developer', 'images/face2.jpg'),
  User('Eva Nice', 'UI/UX', 'images/face3.jpg'),
  User('Eva Nice .K', 'Youtuber', 'images/face4.jpg'),
  User('Eva Nice', 'Team Leader', 'images/face5.jpg'),
  User('Eva Nice', 'Android Developer', 'images/face6.jpg'),
  User('Eva Nice', 'Web Developer', 'images/face7.jpg'),
  User('Eva Nice .K', 'Chef', 'images/face8.jpg'),
  User('Nice Eva', 'Web Developer', 'images/face9.jpg'),
  User('Eva Nice', 'Java Developer', 'images/face10.jpg'),
  User('Eva Nice', 'Java Developer', 'images/face10.jpg'),
  User('Eva Nice', 'Java Developer', 'images/face10.jpg'),
  User('Eva Nice', 'Java Developer', 'images/face10.jpg'),
  User('Eva Nice', 'Java Developer', 'images/face10.jpg'),
  User('Eva Nice', 'Java Developer', 'images/face10.jpg'),
  User('Eva Nice', 'Java Developer', 'images/face10.jpg'),
  User('Eva Nice', 'Java Developer', 'images/face10.jpg'),
  User('Eva Nice', 'Java Developer', 'images/face10.jpg'),
];


void main() {
  runApp(MaterialApp(
    home: ListViewBuilderTest(),
    debugShowCheckedModeBanner: false,
  ));
}
