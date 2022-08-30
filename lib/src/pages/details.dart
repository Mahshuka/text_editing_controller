import 'package:flutter/material.dart';

class WelcomePage  extends StatelessWidget {

String name,email,phone;
WelcomePage({required this.name,required this.email,required this.phone});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text ('Name:${name}'),
            SizedBox(height: 30,),
            Text ('Email :${email}'),
            SizedBox(height: 30,),
            Text ('Phone :${phone}'),
          ],
        ),
      ),
    );
  }
}
