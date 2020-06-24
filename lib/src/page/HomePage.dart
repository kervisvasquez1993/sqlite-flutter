import 'package:flutter/material.dart';
import 'package:sqlite/src/page/direcciones_page.dart';
import 'package:sqlite/src/page/mapas_dart.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaner Lector'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: (){

            },
          )
        ],

      ),
      body: _callPage(currentIndex),
      bottomNavigationBar: _crearBottomNavigationBar(),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked ,
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.filter_center_focus),
        onPressed: (){},
        backgroundColor: Theme.of(context).primaryColor,
      ),
            );
          }

  _crearBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index){
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text('Mapas')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.brightness_5),
          title: Text('Direcciones')
        ),

      ],
    );
  }


  
  Widget _callPage(int PaginaActual) {
    switch( PaginaActual ) {
      case 0 : return MapasPage();
      case 1 : return DireccionPage();

      default:
        return MapasPage();
    }
  }
}