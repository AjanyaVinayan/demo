import 'package:flutter/material.dart';
import 'package:qr_app/qr_signin.dart';
import 'package:qr_app/registration.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            SizedBox(height: 30,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Qr()));
            },
                child:Container(
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                    child: Text('Login',style: TextStyle(fontSize: 20),)),
            style: TextButton.styleFrom(

              side: BorderSide(color: Colors.white,width: 2)
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
