import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Example'),
        ),
        body: Center(
          child: Card(
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('This is a card'),
            ),
          ),
        ),
      ),
    );
  }
}

class CircleAvatarExample extends StatelessWidget {
  const CircleAvatarExample ({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Example'),
        ),
        body: Center(
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://picsum.photos/200/200'
            ),
          ),
        ),
      ),
    );
  }
}

class BorderExample extends StatelessWidget {
  const BorderExample ({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Border Example'),
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 3,
              )
            ),
            child: const Center(
              child: Text('Border Example'),
            ),
          ),
        ),
      ),
    );
  }
}

class BaiTap extends StatelessWidget {
  const BaiTap ({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ho so'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://picsum.photos/200/200'
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Ten Nguoi Dung',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: const [
                        Icon(Icons.email),
                        SizedBox(width: 8),
                        Text('Email: email@example.com'),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 8),
                        Text('Số điện thoại: 0123456789'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});
  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const BorderExample(),
    const CircleAvatarExample(),
    const BaiTap(),
  ];
  // Hàm xử lý khi tap vào item
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Border Example'),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}