import 'package:event_horizon/Controller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class Home extends GetView <HomeController> {

  final List<String> typeTags = ['Type Tag','Type Tag','Type Tag','Type Tag','Type Tag','Type Tag'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("EventHorizon"),
        // actions: [
        //   //Add button
        //   _buildIconWithBackground(
        //     icon: Icons.add,
        //     onPressed: (){
        //       print("Add Post button pressed");
        //     },
        //   ),
        //   //Search button
        //   _buildIconWithBackground(
        //     icon: Icons.search,
        //     onPressed: (){
        //       print("Search button pressed");
        //     },
        //   ),
        //   //Profile button
        //   _buildIconWithBackground(
        //     icon: Icons.person,
        //     onPressed: (){
        //       print("Profile button pressed");
        //     },
        //   )
        // ],

      ),

      body: Center(

        child: Column(

          children: <Widget>[
            // Type Tags section
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: typeTags.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical:10),
                    child: Chip(
                      label: Text(typeTags[index]),
                      backgroundColor: Colors.grey[200],

                    ),
                  );
                },
              ),
            ),
            //Post section
            Expanded(child: ListView.builder(
              itemCount: 5,
              itemBuilder:(context,index){
                return PostCard();
              },
            ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation : FloatingActionButtonLocation.centerDocked,
      floatingActionButton : FloatingActionButton(
        onPressed: (){
          print("add post");
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[300],
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: (){
                print("setting pressed");
                //Navigator.push(
                //    context,
                //    MaterialPageRoute(builder: (context) => SettingsPage()),
                //);
              }, ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: (){
                print("profile pressed");
                //Navigator.push(
                //    context,
                //    MaterialPageRoute(builder: (context) => SettingsPage()),
                //);
              }, ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  Widget _buildIconWithBackground({required IconData icon, required VoidCallback onPressed}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      padding: EdgeInsets.all(0.1),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20,
                  ),
                  SizedBox(width: 10),
                  Text("User name",style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              // SizedBox(height: 5),
              //image
              SizedBox(height: 10),
              Text(
                "Event Title",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 5),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in.",
                style: TextStyle(color: Colors.grey[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}