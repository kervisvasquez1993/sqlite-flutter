import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('hola home page!')),
        bottomNavigationBar: _crearBottomNavigationBar(),
            );
          }

  _crearBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (index){},
      items: [
        botoo

      ],
    );
  }
        
          
}