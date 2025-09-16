import 'package:flutter/material.dart';
import 'package:jonathan_valen/data.dart';
import 'Json.dart';
import 'menu.dart';
import 'item_widget.dart';

//Home Page
class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  _Home createState() => new _Home();
}

class _Home extends State<Home> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer:  NavigationValen(
        OnItemSelected: (index) {
          Navigator.pop(context);
          },
          ), //Connect Sidebar
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
      body: SingleChildScrollView(
        child: Container(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Container(
          child: Container(
            padding: EdgeInsets.all(25),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              elevation: 6, 
              child: Container(
                height: 200,
                child: Stack( 
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(50),
                      child: Opacity(
                        opacity: 0.7,
                        child: Image.asset(
                        'assets/images/bg.jpg',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                        ),
                      
                    ),
                Row(
                  children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                    height: 180,
                    width: 330,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 15.35),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(128, 203, 200, 0.861),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Row(
                      children: [
                        Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 25, left: 35)),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: const Color.fromARGB(126, 255, 255, 255), width: 1),
                          borderRadius: BorderRadius.circular(15)
                        ),
                      child: Text(
                        'New Collection',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          backgroundColor: Colors.white,
                        ),
                        ),
                      ),
                      
                        SizedBox(height: 8,),
                      Text(
                        'The newest fish species to ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'add to your collection',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 12,),
                      ElevatedButton(
                        child: Text(
                          'Show Now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:  Color.fromRGBO(128, 203, 200, 1)
                          ),
                          ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>const JsonList()),
                          );
                        }, 
                      ),
                      SizedBox(height: 10,)
                    ],
                  ),
                  Image.asset(
                    'assets/images/Untitled design.png',
                    fit: BoxFit.cover,
                    height: 150,
                    width: 120,
                    )
                      ],
                    ),
                  )
                  
                ],
              ),
                  ],
                )
              )
            ),
          )
          ),
        
        //Category Menu
        Container( 
          height: 50,
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: [
                //Varian Ikan
              ElevatedButton.icon(
                icon: Image.asset(
                  'assets/logos/goldfish.png', 
                  scale: 20,),
                onPressed: () {
                
                },
                label: Text(
                  'Fish',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                ),
              )
              ),
              SizedBox(width: 7,),

              ElevatedButton.icon(
                icon: Image.asset(
                  'assets/logos/fishing-rod.png', 
                  scale: 20,),
                onPressed: () {
                
                },
                label: Text(
                  'Tools',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                ),
              )
              ),
              SizedBox(width: 7,),

              ElevatedButton.icon(
                icon: Image.asset(
                  'assets/logos/aquarium.png', 
                  scale: 20,),
                onPressed: () {
                
                },
                label: Text(
                  'Aquarium',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                ),
              )
              ),
            ],
          )
          ),
        
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
        Container(
          child: Container(
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 6,
                childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  return ItemWidget(product: fishData[index]);
                },
                itemCount: fishData.length,
          ),
          )
          ),
        ]
      )
      ),
      )
    );
  }
}