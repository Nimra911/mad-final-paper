import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/welcome.dart';

import 'main.dart';
import 'my_flutter_app_icons.dart';




class contactus extends StatelessWidget {
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
          title: Text("Contact Us"),
          actions: [IconButton(icon: Icon(MyFlutterApp.home), onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>welcome()));

          })],
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
          child: ContactUs(

            email: 'NimraRehman@gmail.com',
            companyName: 'Rehman laj',
            phoneNumber: '*****',
            githubUserName: 'Nimra911',
            linkedinURL: '*****************',
            tagLine: 'Flutter Developer',
            twitterHandle: '*******',
            instagram: '*********',
          ),
        ),
        bottomNavigationBar: ContactUsBottomAppBar(

          companyName: 'Nimra Rehman',
          textColor: Colors.white,
          backgroundColor: Colors.purple,
          email: 'nimrarehman@gmail.com',
        ),
      ),
    );
  }
}
















