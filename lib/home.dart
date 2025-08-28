import 'package:flutter/material.dart';
import 'main.dart';
import 'card.dart' as card;
import 'profile.dart' as profile;
import 'explore.dart' as explore;
import 'home.dart' as home;

void main() {
  runApp(MaterialApp(
    title: "Apen Belajar",
    home: Home(),
  ));
}

//Home Page
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
    BottomTabBar createState() => new BottomTabBar();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Home', 
          style: TextStyle(
            fontWeight: FontWeight.bold),
          ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15, left: 0),
            child: Row(
              children: [
                const Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.black,
                    weight: 800,
                    ),

                IconButton(
                  icon: const Icon(
                    Icons.person,
                    size: 28,
                    color: Colors.black,
                    weight: 800,
                    ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
      drawer: const NavigationDrawer(), //Connect Sidebar
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Expanded(
          flex: 2,
          child: Container(

            padding: EdgeInsets.all(25),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              elevation: 4,
              color: Color.fromRGBO(128, 203, 200, 0.857),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 50, left: 35)),
                      Text(
                        'New Collection',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 8,),
                      Text(
                        'The newest fish species to ',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        'add to your collection',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                        ),
                        SizedBox(height: 12,),
                      ElevatedButton(
                        child: Text(
                          'Show Now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Image.asset(
                    'assets/images/Untitled design.png',
                    fit: BoxFit.cover,
                    height: 150,
                    width: 150,
                    )
                ],
              ),
            ),
          )
          ),
        
        //Category Menu
        Expanded( 
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            padding: EdgeInsets.all(22),
            children: <Widget>[ 
              //Varian Ikan
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)
                ),
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/logos/goldfish.png',
                          scale: 10,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Various',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        Text(
                          'Fish',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          )
                      ],
                    ),
                  ),
                ),
              ),

            //Alat Mancing
             Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)
                ),
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/logos/fishing-rod.png',
                          scale: 10,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Fishing',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        Text(
                          'Tools',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          )
                      ],
                    ),
                  ),
                ),
              ),

            //Akuarium
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)
                ),
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/logos/aquarium.png',
                          scale: 10,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Various',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        Text(
                          'Aquariums',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          )
                      ],
                    ),
                  ),
                ),
              ),
            ],
            ),
          ),
        SizedBox(height: 30,),

        
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30)
            ),
            Text(
              'Shop By Category',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 135),
              child: TextButton(
                child: Text('Show all', style: TextStyle(color: Colors.black),),
                onPressed: () {},
              ),),
            
          ],
        ),

        //Recomen Item
        Expanded(
          flex: 2,
          child: GridView.count(
            crossAxisCount: 3,
            padding: const EdgeInsets.all(25),
            children: <Widget>[
              Card(
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
          ),
        ]
      )
    );
  }
}

//Bagian Sidebar
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({ Key? key}) : super(key: key);

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
              builder: (context) => const Home(),
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

//Tab Bar
class BottomTabBar extends State<Home> with SingleTickerProviderStateMixin {

  late TabController controller;

  @override
    void initState() {
      controller = TabController(length: 4, vsync: this);
      super.initState();
    }

  @override
   void dispose(){
    controller.dispose();
    super.dispose();
   }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
              Tab(icon: Icon(Icons.home), text: "Home",),
              Tab(icon: Icon(Icons.search), text: "Explore",),
              Tab(icon: Icon(Icons.shopping_cart), text: "My Card",),
              Tab(icon: Icon(Icons.person), text: "My Profile",),
          ]
        ),
      ),

      body: TabBarView(
        controller: controller,
        children: <Widget>[
          home.Home(),
          explore.Explore(),
          card.Card(),
          profile.Profile()
        ]
      ),
    );
  }
}