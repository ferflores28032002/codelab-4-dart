import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MenuOption extends StatelessWidget {
  const MenuOption(this.icon, this.optionText);
  final IconData icon;
  final String optionText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Icon(
        icon,
        size: 30.0,
        color: Colors.deepOrange,
      ),
      title: Text(optionText),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modified Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Modified Menu Demo'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              HeaderSection(),
              Expanded(
                child: MenuList(),
              ),
              ActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Explore the best movies, series, and fruits!',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MenuOption(Icons.movie, 'Inception'),
        MenuOption(Icons.tv, 'Breaking Bad'),
        MenuOption(Icons.local_movies, 'Interstellar'),
        MenuOption(Icons.fastfood, 'Stranger Things'),
        MenuOption(Icons.local_pizza, 'Apple'),
        MenuOption(Icons.local_drink, 'Banana'),
      ],
    );
  }
}

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              print('Watch button pressed.');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Utiliza backgroundColor en lugar de primary
            ),
            child: Text('Watch'),
          ),
          VerticalDivider(
            width: 20.0,
            thickness: 2.0,
            color: Colors.black,
          ),
          ElevatedButton(
            onPressed: () {
              print('Eat button pressed.');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text('Eat'),
          ),
        ],
      ),
    );
  }
}
