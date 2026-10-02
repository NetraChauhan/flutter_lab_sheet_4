// 1. Two screens; navigate using an ElevatedButton.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.teal,useMaterial3:true),home:const First());
}
class First extends StatelessWidget{
 const First({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('First Screen'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(28),child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Icon(Icons.looks_one_rounded,size:64,color:Colors.teal),const SizedBox(height:14),
  const Text('Welcome to the First Screen',style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)),const SizedBox(height:18),
  ElevatedButton.icon(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>const Second())),icon:const Icon(Icons.arrow_forward),label:const Text('Go to Second Screen'))
 ]))));
}
class Second extends StatelessWidget{
 const Second({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Second Screen')),body:const Center(child:Text('You are on the Second Screen',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold))));
}