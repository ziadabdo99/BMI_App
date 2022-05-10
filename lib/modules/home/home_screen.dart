
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> i = ["ziad", "ahmed", "abdo"];

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          "Tomato app",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_important),
          ),
          IconButton(
            onPressed: () {
              print("search");
            },
            icon: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
        Container(
          width: 200.0,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20.0),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                  alignment:Alignment.bottomCenter ,
                children: [
                  Image(
                    image: NetworkImage(
                        "https://media-exp1.licdn.com/dms/image/C4E1BAQEJwqzxAJYvnA/company-background_10000/0/1550197114868?e=2159024400&v=beta&t=5a1uhYLXsL4NP7N-aGqEKiMVyevHJ1UrLbW9FUVN4TI"),
                    height: 200.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),

                  Container(
                    width: 200.0,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    color: Colors.black.withOpacity(.7),
                    child: Text(
                        "data",
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,

                      ),

                    ),
                  ),
                ],

              ),
            ),
          ),
        ),
        ],
      ),
    );
  }
}
