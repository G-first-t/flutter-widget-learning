import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
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
          title:const Text("Carousel Slider",
          style:TextStyle(
            color:Colors.white,
            fontWeight:FontWeight.bold
            )),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 2, 20, 51),),
             body:ListView( 
              children:[
                CarouselSlider(items: [
                  Container(
                    margin:const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image:NetworkImage('https://i.pinimg.com/474x/3f/cd/17/3fcd1785622d5eea86a236d9ad795fba.jpg'),
                        fit: BoxFit.cover
                      )
                    )),
                    Container(
                      margin:const EdgeInsets.all(2),
                      decoration:BoxDecoration(
                         borderRadius: BorderRadius.circular(8.0),
                        image:const DecorationImage(
                          image:NetworkImage('https://i.pinimg.com/474x/92/3a/79/923a79f423de552c2057db61d3d88450.jpg'),
                          fit: BoxFit.cover )
                      )
                      ),
                    Container(
                      margin:const EdgeInsets.all(2),
                      decoration:BoxDecoration( 
                         borderRadius: BorderRadius.circular(8.0),
                        image:const DecorationImage(
                          image:NetworkImage('https://i.pinimg.com/474x/56/78/9c/56789cec8a420e48c8203cc2d13c2027.jpg'),
                          fit: BoxFit.cover
                        ))
                      ),
                      Container(
                        margin:const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8.0),
                           image:const DecorationImage(
                            image:NetworkImage('https://i.pinimg.com/474x/e8/9b/09/e89b096495bbc18aa6ee59ca3174e8e9.jpg'),
                            fit: BoxFit.cover
                           ))
                        ),
                         Container(
                        margin:const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8.0),
                           image:const DecorationImage(
                            image:NetworkImage('https://i.pinimg.com/474x/cb/5a/cf/cb5acfaf184a131bc125e0820932fc85.jpg'),
                            fit: BoxFit.cover
                           ))
                        ),
                         Container(
                         
                        margin:const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8.0),
                           image:const DecorationImage(
                            image:NetworkImage('https://i.pinimg.com/474x/17/92/bd/1792bd231e0ef94863b3394c672a8096.jpg'),
                            fit: BoxFit.cover
                           ))
                        ),

                ], options: 
                CarouselOptions(
                 
                  height:400,
                  autoPlay:true,
                  enlargeCenterPage: true,
                  aspectRatio: 16/9,
                  enableInfiniteScroll: true,

                ))
              ]
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