import 'package:flutter/material.dart';
import 'screen1.dart';

class Screen2 extends StatelessWidget {
  // @override
  // void initState(){
  //   super.initState()
  //   print('initState called');

  // }

  // @override
  // void deactivate(){
  //   super.deactivate()
  //   print('deactivate called');
  // }

  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 2'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          child: Text('Go Back To Screen 1'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Screen1();
            }));
          },
        ),
      ),
    );
  }
}
