import 'package:flutter/material.dart';
import 'main.dart';
import 'home.dart' as home;
import 'explore.dart' as explore;
import 'cardPage.dart' as card;
import 'profile.dart' as profile;


void main() {
  runApp(MaterialApp(
    title: "Apen Belajar",
    home: Menu(),
  ));
}


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _TabBar createState() => new _TabBar();

}

class _TabBar extends State<Menu>{
  int _currentIndex = 0;

    final List<Widget> _pages = const [
    home.Home(),
    explore.Explore(),
    card.CardPage(),
    profile.Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(), //Connect Sidebar
      body: _pages[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadiusGeometry.only(topRight: Radius.circular(24), topLeft: Radius.circular(24)),
        child: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(128, 203, 201, 1),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor:Color.fromRGBO(105, 100, 188, 1),
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "My Card"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      )
      
    );
  }
}

//Bagian Sidebar
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
      ),
  );

  Widget buildHeader(BuildContext context) => Container(
    color: const Color.fromRGBO(128, 203, 201, 1),
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
    child: Column(
      children: const[
        CircleAvatar(
          radius: 51,
          backgroundImage: AssetImage("assets/images/p.png"),
        ),
        SizedBox(height: 12,),
        Text(
          'Jonathan Valentino',
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'Orang Ganteng',
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 15,),
      ],
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24), 
    child: Wrap(
      runSpacing: 10,
      children: [
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('My Profile'),
          onTap: () {},
        ),
        const Divider(color: Colors.black,),
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => const Menu(),
            ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.search_sharp),
          title: const Text('Explore'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.shopping_cart),
          title: const Text('My Transaction'),
          onTap: () {},
        ),
        const Divider(color: Colors.black),
        ListTile(
          leading: const Icon(Icons.logout_rounded),
          title: const Text('Logout'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => const Login(),
            ));
            }
        ),
      ],
    ),
  );
}