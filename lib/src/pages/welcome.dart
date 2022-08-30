import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:texteditingcontroller/src/pages/details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 TextEditingController _name =new TextEditingController();
 TextEditingController _email =new TextEditingController();
 TextEditingController _phone =new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(

       child: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Column(
mainAxisAlignment: MainAxisAlignment.center,
           children: [

             Padding(
               padding: const EdgeInsets.only(top: 15),
               child: TextField(
                 controller: _name,
                 decoration: InputDecoration(
                   labelText: 'Enter Name ',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(4)
                   )
                 ),

               ),
             ),
             SizedBox(height: 20,),
             TextField(
               controller: _email,
               decoration: InputDecoration(
                   labelText: 'Enter Email  ',
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(4)
                   )
               ),

             ),
             SizedBox(height: 20,),
             TextField(
               controller: _phone,
               keyboardType: TextInputType.phone,
               decoration: InputDecoration(
                   labelText: 'Enter Phone  ',
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(4)
                   )
               ),

             ),
             SizedBox(height: 20,),
             ElevatedButton(onPressed:(){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage(name: _name.text, email: _email.text, phone: _phone.text)));
             },

                 child: Text('submit '))
           ],
         ),
       ),
     ),
    );
  }
}
