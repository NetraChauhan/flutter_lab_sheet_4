// 22. Login, Home and Profile screens with navigation.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.blue,useMaterial3:true),home:const Login());
}
class Login extends StatelessWidget{
 const Login({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Login'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(28),child:SizedBox(width:400,child:Column(children:[
  const Icon(Icons.login,size:60,color:Colors.blue),const SizedBox(height:12),
  const TextField(decoration:InputDecoration(labelText:'Username',border:OutlineInputBorder())),const SizedBox(height:12),
  const TextField(obscureText:true,decoration:InputDecoration(labelText:'Password',border:OutlineInputBorder())),const SizedBox(height:16),
  SizedBox(width:double.infinity,child:FilledButton(onPressed:()=>Navigator.pushReplacement(c,MaterialPageRoute(builder:(_)=>const Home())),child:const Text('Login')))
 ])))));
}
class Home extends StatelessWidget{
 const Home({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Home'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Icon(Icons.home,size:68,color:Colors.blue),const Text('Welcome Home',style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),const SizedBox(height:16),
  ElevatedButton.icon(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>const Profile())),icon:const Icon(Icons.person),label:const Text('Open Profile'))
 ])));
}
class Profile extends StatelessWidget{
 const Profile({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Profile')),body:const Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[
  CircleAvatar(radius:45,child:Text('NC',style:TextStyle(fontSize:24))),SizedBox(height:10),
  Text('Netra Chauhan',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),Text('BCA • 5th Semester'),Text('COER University')
 ])));
}