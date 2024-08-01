import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';



void main()=>runApp(MaterialApp(
  home:Home()
  )
  );



  class Home extends StatelessWidget{
    @override    
    Widget build(BuildContext context){
      return Scaffold( 
        appBar:AppBar( 
          title:const Text("this is my application",
          style:TextStyle(
            color:Colors.white,
            fontWeight:FontWeight.bold
            )),
            backgroundColor: const Color.fromARGB(255, 2, 20, 51),),
             body:Container(
              alignment:Alignment.topCenter,
              height:200,
              width:double.infinity,
              decoration: BoxDecoration(
                 border:Border.all(
                  color:Colors.black12,width:5
                 )
              ),
              child:const Text("cool app"),

              ),
              drawer:Drawer(
                child:ListView( children: const <Widget>[
                  DrawerHeader(
                    child:Text("sidebar")
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title:Text("list 1")),

                  ListTile( 
                    leading: Icon(Icons.airplanemode_on),
                    title:Text("airplane mode"))

                ])),
                floatingActionButton:FloatingActionButton(
                  onPressed:(){},
                  backgroundColor: const Color.fromARGB(255, 4, 25, 61),
                  child:const Text("click me ",
                   style:TextStyle( color:Colors.white)
                  ),
                  
                  ),
                bottomNavigationBar: BottomNavigationBar( 
                  currentIndex:0,
                  backgroundColor:const Color.fromARGB(255, 214, 224, 232),
                   items: const[
                    BottomNavigationBarItem( 
                      label:"Home",
                      icon:Icon(Icons.home)),
                    BottomNavigationBarItem( 
                      label:"search",
                      icon:Icon(Icons.search)),
                    BottomNavigationBarItem(
                      label:"profile",
                      icon:Icon(Icons.person))
                   ], onTap: (int indexOfItem){},
                   ),
                 
            
            );
    }
  }