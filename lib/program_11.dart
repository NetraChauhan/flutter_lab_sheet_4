// 11. Home screen with drawer: Home, Profile, About and Settings.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.teal,useMaterial3:true),home:const Home());
}
class Home extends StatefulWidget{const Home({super.key});State<Home> createState()=>_S();}
class _S extends State<Home>{
 String page='Home';
 Widget build(c)=>Scaffold(appBar:AppBar(title:Text(page)),drawer:Drawer(child:ListView(padding:EdgeInsets.zero,children:[
  const DrawerHeader(decoration:BoxDecoration(color:Colors.teal),child:Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment:MainAxisAlignment.end,children:[Icon(Icons.school,color:Colors.white,size:42),Text('Student Menu',style:TextStyle(color:Colors.white,fontSize:22,fontWeight:FontWeight.bold))])),
  for(final x in [('Home',Icons.home),('Profile',Icons.person),('About',Icons.info),('Settings',Icons.settings)])
   ListTile(leading:Icon(x.$2),title:Text(x.$1),onTap:(){setState(()=>page=x.$1);Navigator.pop(c);})
 ]),body:Center(child:Column(mainAxisSize:MainAxisSize.min,children:[Icon(page=='Home'?Icons.home:page=='Profile'?Icons.person:page=='About'?Icons.info:Icons.settings,size:70,color:Colors.teal),Text('$page Screen',style:const TextStyle(fontSize:26,fontWeight:FontWeight.bold))])));
}