// 16. Pass a student's name to another screen and display it.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.teal,useMaterial3:true),home:const First());
}
class First extends StatelessWidget{
 const First({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Student Name'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(30),child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Text('Student: Netra Chauhan',style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)),const SizedBox(height:16),
  FilledButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>const Second('Netra Chauhan'))),child:const Text('Send Name'))
 ]))));
}
class Second extends StatelessWidget{
 final String name;
 const Second(this.name,{super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Received Data')),body:Align(alignment:Alignment.topCenter,child:Container(padding:const EdgeInsets.all(24),decoration:BoxDecoration(color:Colors.teal.shade50,borderRadius:BorderRadius.circular(18)),child:Column(mainAxisSize:MainAxisSize.min,children:[const Icon(Icons.person,size:58,color:Colors.teal),const Text('Student Name'),Text(name,style:const TextStyle(fontSize:26,fontWeight:FontWeight.bold))]))));
}