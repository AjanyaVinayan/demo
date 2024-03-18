import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qr_app/qr_signin.dart';
import 'package:qr_app/registration.dart';
import 'package:http/http.dart' as http;
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
 final _rollNoController = TextEditingController();
 final _passwordController = TextEditingController();

 void login() async{
   Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
   var response = await http.post(uri,
       headers: <String, String>{
       'content-Type': 'application/json; charset=UTF-8'
       },
     body: jsonEncode({
       'rollno': _rollNoController.text,
       'password': _passwordController.text,
     })
   );
   var data =jsonDecode(response.body);

   if(response.statusCode==200){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Qr()));
   }
   else
     {
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data["message"])));
     }

   }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.teal,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login',
                style: TextStyle(
                  color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize:28),
              ),
              SizedBox(height: 90,),
              Container(
                width: 400,
                child: TextField(
                  controller: _rollNoController,
                  decoration: InputDecoration(
                    hintText: 'Enter your Roll No.',
                    hintStyle: TextStyle(
                      color: Colors.white
                    ),
                    enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,color: Colors.white)
                    ),
                  ),
                ),
              ),
            SizedBox(height: 20,),
            Container(
              width: 400,
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password.',
                  hintStyle: TextStyle(
                      color: Colors.white
                  ),
                  enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,color: Colors.white)
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            TextButton(onPressed: (){
             login();
            },
                child:Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Text('Login',style: TextStyle(fontSize: 20,color: Colors.white),)),
            style: TextButton.styleFrom(
                side: BorderSide(color: Colors.white,width: 2),
              shape: RoundedRectangleBorder()
            ),
            ),
            SizedBox(height: 40,),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Reg()));
              },
              child: Text('dont have an account?register',
                style: TextStyle(fontSize: 15,color:Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
