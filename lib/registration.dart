import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  final _nameController = TextEditingController();
  final _rollNoController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  void register()async{
     Uri uri= Uri.parse('https://scnner-web.onrender.com/api/register');
     var response = await http.post(uri,
         headers: <String, String>{
           'content-Type': 'application/json; charset=UTF-8'
         },
       body: jsonEncode({
         'name':_nameController.text,
         'email':_emailController.text,
         'rollno':_rollNoController.text,
         'password':_rollNoController.text,
       })
     );
     var data =jsonDecode(response.body);
     print(data["message"]);
     if(response.statusCode==200){
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('sucessfull')));
     }
     else {
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data["message"])));
     }
       


    print(_nameController.text);
    print(_rollNoController.text);
    print(_emailController.text);
    print(_passwordController.text);
  }
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
                controller: _nameController,
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
                controller:_rollNoController,
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
                controller: _emailController,
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
                controller: _passwordController,
                obscureText: true,
                obscuringCharacter: '*',
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
            SizedBox(height: 40,),
            TextButton(onPressed: (){register();},
              child:Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Text('Register',style: TextStyle(fontSize: 20,
                      color:Colors.white ),)),
              style: TextButton.styleFrom(
                  side: BorderSide(color: Colors.white,width: 2),
                shape: RoundedRectangleBorder()
              ),
            ),

          ],
        ),
      ),
    );
  }
}
