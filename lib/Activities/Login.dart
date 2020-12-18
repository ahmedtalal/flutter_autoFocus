import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  static const ROUTE = "/login" ;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String fName = '' ;
  String lName = '' ;
  var myFocus  ;
  var myController = TextEditingController() ;

  @override
  void initState() {
    super.initState();
    myFocus = FocusNode() ;
    myController.addListener(() {
      setState(() {
        lName = myController.text ;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    myFocus.dispose() ;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page" ,
        ),
        backgroundColor: Colors.orange ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          child: Column(
            children: [
              // your typing for first name ....
              Text(
                "first name $fName" ,
              ) ,

              // your typing for last name ....
              Text(
                "last name $lName" ,
              ),

              // sized box 
              SizedBox(height: 50,) ,

              // first name field
              TextFormField(
                decoration: InputDecoration(
                  hintText: "First Name....."
                ),
                autofocus: true ,
                validator: (value){
                  if (value.isEmpty) {
                    return "first name required" ;
                  }
                  return null ;
                },
                onChanged: (value){
                  setState(() {
                    fName = value; 
                  });
                },
              ) ,

              // last name field 
              TextFormField(
                focusNode: myFocus ,
                decoration: InputDecoration(
                  hintText: "Last Name....."
                ),
                validator: (value){
                  if (value.isEmpty) {
                    return "last name required" ;
                  }
                  return null ;
                },
                // onChanged: (value){
                //   setState(() {
                //     lName = value ;
                //   });
                // } ,
                controller: myController ,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Next"),
        onPressed: () => myFocus.requestFocus(),
      ),
    );
  }
}