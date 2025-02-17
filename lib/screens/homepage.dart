import 'package:daraj/components/items.dart';
import 'package:daraj/screens/marketplace.dart';
import 'package:daraj/screens/profile.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> pages = [
    MarketPlace(
      title: '',
    ),
    MarketPlace(
      title: '',
    ),
    ProfilePage(),
  ];

  final List<Items> item = [
    const Items(
      title: "Daddys's Kitchen Butwal",
      branch: "Butwal branch",
    ),
    const Items(title: "Daddys's Kitchen Bhairawa", branch: "Bhairawa branch"),
    const Items(title: "Daddys's Kitchen palpa", branch: "plapa branch"),
  ];
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            item.add(const Items(
              title: "New Daddy kitchen Butwal",
              branch: "Butwal branch",
            ));
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 226, 60, 45),
        title: const Text(
          "Select Our Outlet",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: pages.elementAt(currentPageIndex),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}
