import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
            ),
            SizedBox(height: 20,),
            Text('PROFILE',
              style:TextStyle(
                  color:Colors.white,
              fontSize: 30)
              ,),
            Text('Atlas corrigon',
              style:TextStyle(
                  color:Colors.white,
                  fontSize: 30)
              ,),
        SizedBox(height: 20,),
        Container(
          width: 500,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone),
              prefixIconColor: Colors.teal,
              fillColor: Colors.white,
              filled: true,
              hintText: '456754887',
              hintStyle: TextStyle(
                  color: Colors.black
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
                  prefixIcon: Icon(Icons.email),
                  prefixIconColor: Colors.teal,
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'atlascorigon@gmail.com',
                  hintStyle: TextStyle(
                      color: Colors.black
                  ),
                  enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,color: Colors.white)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
