// 5. Home Screen button opens a separate Profile Screen.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.pink,useMaterial3:true),home:const Home());
}
class Home extends StatelessWidget{
 const Home({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Home'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(30),child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Text('Student Portal',style:TextStyle(fontSize:26,fontWeight:FontWeight.bold)),const SizedBox(height:18),
  ElevatedButton.icon(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>const Profile())),icon:const Icon(Icons.account_circle),label:const Text('Open Profile'))
 ]))));
}
class Profile extends StatelessWidget{
 const Profile({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Profile')),body:const Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[
  CircleAvatar(radius:46,child:Text('NC',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold))),SizedBox(height:12),
  Text('Netra Chauhan',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),Text('BCA • 5th Semester'),Text('COER University')
 ])));
}