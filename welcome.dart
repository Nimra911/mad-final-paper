import 'contactus.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/welcome.dart';
import 'main.dart';
class welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const kPrimaryGradient = LinearGradient(
      colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Welcome"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith( //This will change the drawer background to blue.
            canvasColor: Colors.purple,
          ),
          child: Drawer(
              child: ListView(
                children: [
                  SizedBox(
                    width: 250,
                    height: 40,
                  ),
                  ListTile(
                    title: Container(

                      child: Text(
                        'Nimra Rehman',
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color:Colors.white
                        ),
                      ),
                    ),
                    onTap: (){


                    },
                  ),
                  Divider(
                    height:30,
                    thickness: 20,
                    color: Colors.white,
                  ),
                  ListTile(
                    title: Container(

                      child: Text('Welcome screen',style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.black45, fontSize: 20.0),

                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => welcome()),
                      );

                    },
                  ),
                  Divider(
                    height:30,
                    thickness: 20,
                    color: Colors.white,
                  ),


                  ListTile(
                    title: Container(

                      child: Text('Contact Us plz..',style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.black45, fontSize: 20.0),

                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => contactus()),
                      );

                    },
                  ),
                  Divider(
                    height:30,
                    thickness: 20,
                    color: Colors.white,
                  ),
                  ListTile(
                    title: Container(

                      child: Text('Exit',style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.black45, fontSize: 20.0),

                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>mysplashscreen()),
                      );

                    },
                  ),
                  Divider(
                    height:30,
                    thickness: 20,
                    color: Colors.white,
                  ),
                ],
              )
          ),
        ),

        body: Container(
          decoration: BoxDecoration(
            gradient: kPrimaryGradient,
          ),

        ),

      ),
    );
  }
}
