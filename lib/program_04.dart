// 4. Navigate from Login Screen to Home Screen on Login.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.blue,useMaterial3:true),home:const Login());
}
class Login extends StatelessWidget{
 const Login({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Login'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(26),child:SizedBox(width:400,child:Column(children:[
  const Icon(Icons.lock_outline,size:62,color:Colors.blue),const SizedBox(height:14),
  const TextField(decoration:InputDecoration(labelText:'Username',prefixIcon:Icon(Icons.person),border:OutlineInputBorder())),const SizedBox(height:12),
  const TextField(obscureText:true,decoration:InputDecoration(labelText:'Password',prefixIcon:Icon(Icons.lock),border:OutlineInputBorder())),const SizedBox(height:16),
  SizedBox(width:double.infinity,child:FilledButton(onPressed:()=>Navigator.pushReplacement(c,MaterialPageRoute(builder:(_)=>const Home())),child:const Text('Login')))
 ])))));
}
class Home extends StatelessWidget{
 const Home({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Home')),body:const Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[
  Icon(Icons.check_circle,size:72,color:Colors.green),Text('Login Successful!',style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),Text('Welcome to the Home Screen')
 ])));
}