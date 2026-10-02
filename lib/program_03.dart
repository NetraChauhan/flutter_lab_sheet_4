// 3. Home, Profile and Settings screens with navigation.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.orange,useMaterial3:true),home:const Home());
}
void open(BuildContext c,Widget p)=>Navigator.push(c,MaterialPageRoute(builder:(_)=>p));
class Home extends StatelessWidget{
 const Home({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Home'),centerTitle:true),body:Padding(padding:const EdgeInsets.all(28),child:Wrap(spacing:16,runSpacing:16,children:[
  ElevatedButton.icon(onPressed:()=>open(c,const Profile()),icon:const Icon(Icons.person),label:const Text('Profile')),
  ElevatedButton.icon(onPressed:()=>open(c,const Settings()),icon:const Icon(Icons.settings),label:const Text('Settings'))
 ])));
}
class Profile extends StatelessWidget{
 const Profile({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Profile')),body:Center(child:Column(mainAxisSize:MainAxisSize.min,children:[
  const CircleAvatar(radius:42,child:Icon(Icons.person,size:45)),const SizedBox(height:12),const Text('Student Profile',style:TextStyle(fontSize:23,fontWeight:FontWeight.bold)),
  ElevatedButton(onPressed:()=>open(c,const Settings()),child:const Text('Open Settings'))
 ])));
}
class Settings extends StatelessWidget{
 const Settings({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Settings')),body:Center(child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Icon(Icons.settings,size:60,color:Colors.orange),const Text('Settings Screen',style:TextStyle(fontSize:23,fontWeight:FontWeight.bold)),
  ElevatedButton(onPressed:()=>open(c,const Profile()),child:const Text('Open Profile'))
 ])));
}