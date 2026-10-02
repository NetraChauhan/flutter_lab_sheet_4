// 6. Navigate to a new screen using Navigator.push().
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.green,useMaterial3:true),home:const Page1());
}
class Page1 extends StatelessWidget{
 const Page1({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Navigator.push()')),body:Align(alignment:Alignment.topCenter,child:ElevatedButton.icon(
  onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>const Page2())),icon:const Icon(Icons.open_in_new),label:const Text('Push New Screen'))));
}
class Page2 extends StatelessWidget{
 const Page2({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('New Screen')),body:const Align(alignment:Alignment.topCenter,child:Text('Opened using Navigator.push()',style:TextStyle(fontSize:22,fontWeight:FontWeight.bold))));
}