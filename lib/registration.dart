import 'package:flutter/material.dart';
class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Registration'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
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
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Roll No.',
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
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
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
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
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
                  child: Text('Register',style: TextStyle(fontSize: 20),)),
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.white,width: 2)
              ),
            ),

          ],
        ),
      ),
    );
  }
}
