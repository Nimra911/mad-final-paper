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
            canvasColor: Colors.blue.shade700,
          ),
          child: Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text("           Nimra Rehman", style: TextStyle(
                        fontSize: 25.0,
                        fontWeight:FontWeight.bold
                    ),),
                    accountEmail: Text("          FA17-BCS-072", style: TextStyle(
                        fontSize: 25.0,
                        fontWeight:FontWeight.bold
                    ),),
                    decoration: BoxDecoration(
                      gradient: new LinearGradient(
                        colors: [
                          Colors.blueGrey.shade700,
                          Colors.blueGrey.shade700,
                        ],

                        stops: [0.0, 1.0],
                      ),
                    ),

                  ),
                  ListTile(
                    title: Container(

                      child: Text('Welcome',style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.white, fontSize: 20.0),

                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:  (context) => welcome()),
                      );

                    },
                  ),
                  SizedBox(
                    width: 2.0,
                    height: 2.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(
                        gradient: kPrimaryGradient,
                      ),
                    ),
                  ),


                  ListTile(
                    title: Container(

                      child: Text('Contact Us',style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.white, fontSize: 20.0),

                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => contactus()),
                      );

                    },
                  ),
                  SizedBox(
                    width: 2.0,
                    height: 2.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(
                        gradient: kPrimaryGradient,
                      ),
                    ),
                  ),

                  ListTile(
                    title: Container(

                      child: Text('Exit',style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.white, fontSize: 20.0),

                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>mysplashscreen()),
                      );

                    },
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
