import 'package:flutter/material.dart';
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
            TextButton(onPressed: (){},
                child:Container(
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                    child: Text('Login',style: TextStyle(fontSize: 20),)),
            style: TextButton.styleFrom(
               primary: Colors.white,
              side: BorderSide(color: Colors.white,width: 2)
            ),
            ),
            SizedBox(height: 40,),
            Text('dont have an account?register',
              style: TextStyle(fontSize: 15,color:Colors.white)),
          ],
        ),
      ),
    );
  }
}
