// 2. Home Screen and About Screen with button navigation.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.deepPurple,useMaterial3:true),home:const Home());
}
class Home extends StatelessWidget{
 const Home({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Home'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(26),child:Container(width:380,padding:const EdgeInsets.all(22),decoration:BoxDecoration(color:Colors.deepPurple.shade50,borderRadius:BorderRadius.circular(18)),child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Icon(Icons.home_rounded,size:56,color:Colors.deepPurple),const Text('Home Screen',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),const SizedBox(height:16),
  FilledButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>const About())),child:const Text('Open About Screen'))
 ])))));
}
class About extends StatelessWidget{
 const About({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('About')),body:const Padding(padding:EdgeInsets.all(30),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
  Icon(Icons.info_outline,size:56,color:Colors.deepPurple),SizedBox(height:12),
  Text('About Screen',style:TextStyle(fontSize:26,fontWeight:FontWeight.bold)),SizedBox(height:8),
  Text('This screen was opened from the Home Screen using navigation.',style:TextStyle(fontSize:17))
 ])));
}