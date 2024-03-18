import 'package:flutter/material.dart';
import 'package:qr_app/home.dart';
class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 500,
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Ente Here',
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
          SizedBox(height: 50,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 60,vertical: 10),
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Home()));
            },
              child: Text('Next',style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),),
              style: TextButton.styleFrom(
                  shape: StadiumBorder(
                      side: BorderSide(color: Colors.white)
                  )
              ),
            ),
          )
        ]
    )
    )
    );
  }
}
