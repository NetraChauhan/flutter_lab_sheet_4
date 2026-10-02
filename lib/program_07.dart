// 7. Return from second screen to first using Navigator.pop().
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.indigo,useMaterial3:true),home:const First());
}
class First extends StatelessWidget{
 const First({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('First Screen'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(30),child:FilledButton(
  onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>const Second())),child:const Text('Open Second Screen')))));
}
class Second extends StatelessWidget{
 const Second({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Second Screen')),body:Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Icon(Icons.keyboard_return,size:58,color:Colors.indigo),const SizedBox(height:12),
  const Text('Second Screen',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),const SizedBox(height:16),
  ElevatedButton.icon(onPressed:()=>Navigator.pop(c),icon:const Icon(Icons.arrow_back),label:const Text('Return to First Screen'))
 ])));
}