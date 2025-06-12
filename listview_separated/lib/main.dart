import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewBuilderTest(),
    debugShowCheckedModeBanner: false,
  ));
}

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
  User('Eva Nice', 'Web Developer', 'assets/images/face1.png'),
  User('Eva Nice', 'Flutter Developer', 'assets/images/face2.png'),
  User('Eva Nice', 'UI/UX', 'assets/images/face3.png'),
  User('Eva Nice .K', 'Youtuber', 'assets/images/face2.png'),
  User('Eva Nice', 'Team Leader', 'assets/images/face1.png'),
  User('Eva Nice', 'Android Developer', 'assets/images/face2.png'),
  User('Eva Nice', 'Web Developer', 'assets/images/face1.png'),
  User('Eva Nice .K', 'Chef', 'assets/images/face3.png'),
  User('Nice Eva', 'Web Developer', 'assets/images/face1.png'),
  User('Eva Nice', 'Java Developer', 'assets/images/face1.png'),
  User('Eva Nice', 'Java Developer', 'assets/images/face2.png'),
  User('Eva Nice', 'Java Developer', 'assets/images/face3.png'),
  User('Eva Nice', 'Java Developer', 'assets/images/face2.png'),
  User('Eva Nice', 'Java Developer', 'assets/images/face1.png'),
  User('Eva Nice', 'Web Developer', 'assets/images/face1.png'),
  User('Eva Nice', 'Flutter Developer', 'assets/images/face2.png'),
  User('Eva Nice', 'UI/UX', 'assets/images/face3.png'),
  User('Eva Nice .K', 'Youtuber', 'assets/images/face2.png'),
  User('Eva Nice', 'Team Leader', 'assets/images/face1.png'),
  User('Eva Nice', 'Android Developer', 'assets/images/face2.png'),
  User('Eva Nice', 'Web Developer', 'assets/images/face1.png'),
  User('Eva Nice', 'Flutter Developer', 'assets/images/face2.png'),
  User('Eva Nice', 'UI/UX', 'assets/images/face3.png'),
  User('Eva Nice .K', 'Youtuber', 'assets/images/face2.png'),
  User('Eva Nice', 'Team Leader', 'assets/images/face1.png'),
  User('Eva Nice', 'Android Developer', 'assets/images/face2.png'),
  User('Eva Nice', 'Web Developer', 'assets/images/face1.png'),
];