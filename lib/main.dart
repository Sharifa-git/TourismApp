import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: myHome());
  }
}

class myHome extends StatelessWidget {
  const myHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tourism Application',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green[800],
            margin: EdgeInsets.zero,
            padding: EdgeInsets.all(20),
            height: 300.0,
            width: 500.0,
            child: Image(image: AssetImage('images/Salalah1.jpg')),
          ),

          Text(
            'Popular Places',
          
          style:TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            ),
          ),

          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                      width: 200,
                      child: Card(
                          child: Image(image: AssetImage('images/Salalah2.jpg')))),
                          Fav()

                ],
              ),


              
                      

              Column(
                children: [
                  SizedBox(
                      width: 200,
                      child: Card(
                          child: Image(image: AssetImage('images/Salalah3.jpg')))),
                          Fav()

                ],
              ),
            ],
          ),

        Container(
            padding: EdgeInsets.all(10),
            color: Colors.amber[900],
            child: TextFormField(
            decoration: InputDecoration(labelText: 'Amount'),
            ),

          ),
     

Container(
  width: double.infinity,
  color: Colors.blueAccent,
  child:  Text(
          textAlign: TextAlign.center,
            'Salalah Places',
          style:TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            
            ),
          ),
),

       




          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 10, 20),
            color: Colors.blueGrey,
            child: Image(
              image: AssetImage('images/Salalah1.jpg'),
              ),
              ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip:'Test',
        backgroundColor: Colors.green[300],
        foregroundColor: Colors.white,
        child: Icon(
          Icons.add_circle_outline,
        ),
      )
    );
  }
}



class Fav extends StatefulWidget {
  const Fav({super.key});

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
 bool liked =false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
       onPressed: () {

        setState(() => liked = !liked);

      },

      icon: liked

          ? (Icon(Icons.favorite,color:Colors.red))
          :(Icon(Icons.favorite)),

        

            );
  }
}
  

  