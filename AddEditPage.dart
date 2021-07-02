import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import 'main.dart';
class AddEditPage extends StatefulWidget{
  final List list;
  final int index;
  AddEditPage({ this.list, this.index});
  @override
  _AddEditPageState createState() => _AddEditPageState();
}
class _AddEditPageState extends State<AddEditPage> {
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController address;

  bool editMode = false;

  addUpdateData(){
    if(editMode){
      var url = Uri.parse('http://192.168.1.8/php_mysql_crud//edit.php');
      http.post(url,body: {
        'id':widget.list[widget.index]['id'],
        'name' : name.text,
        'email' : email.text,
        'phone' : phone.text,
        'address' : address.text,

      });
    }else{
      var url = Uri.parse('http://192.168.1.8/php_mysql_crud//add.php');
      http.post(url,body: {
        'name' : name.text,
        'email' : email.text,
        'phone' : phone.text,
        'address' : address.text,

      }
      );

    }
    var url = Uri.parse('http://192.168.1.8/php_mysql_crud//add.php');
    http.post(url,body: {
      'name' : name.text,
      'email' : email.text,
      'phone' : phone.text,
      'address' : address.text,

    }
    );
  }



  @override
  void initState() {
    name = TextEditingController(text: '');
    email = TextEditingController(text: '');
    phone = TextEditingController(text: '');
    address = TextEditingController(text: '');
    if(widget.index != null){
      editMode=true;
      name.text=widget.list[widget.index]['name'];
      email.text=widget.list[widget.index]['email'];
      phone.text=widget.list[widget.index]['phone'];
      address.text=widget.list[widget.index]['address'];

    }

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(editMode ? 'Update' :'Add Data'),),
      body: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                labelText: 'name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: phone,
              decoration: InputDecoration(
                labelText: 'phone',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: address,
              decoration: InputDecoration(
                labelText: 'address',
              ),
            ),
          ),

          Padding(padding:  EdgeInsets.all(8),
            child: RaisedButton(
              onPressed: (){
                setState(() {
                  addUpdateData();


                });
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),),);
                debugPrint('Clicked RaisedButton Button');
              },
              color: Colors.blue,
              child: Text(editMode ? 'Update' :'Save',style: TextStyle(color: Colors.white),),

            ),
          ),
        ],
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextEditingController>('name', name));
  }
}