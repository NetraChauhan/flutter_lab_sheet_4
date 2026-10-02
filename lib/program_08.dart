// 8. Home and Detail screens with forward and backward navigation.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.cyan,useMaterial3:true),home:const Home());
}
class Home extends StatelessWidget{
 const Home({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Home'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(26),child:Container(width:390,padding:const EdgeInsets.all(20),decoration:BoxDecoration(border:Border.all(color:Colors.cyan),borderRadius:BorderRadius.circular(16)),child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Icon(Icons.home_outlined,size:54,color:Colors.cyan),const Text('Home Screen',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),const SizedBox(height:16),
  FilledButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>const Detail())),child:const Text('View Details'))
 ])))));
}
class Detail extends StatelessWidget{
 const Detail({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Detail Screen')),body:Padding(padding:const EdgeInsets.all(30),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
  const Icon(Icons.description_outlined,size:56,color:Colors.cyan),const SizedBox(height:10),
  const Text('Detail Screen',style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),const Text('Forward navigation opened this page.'),
  const SizedBox(height:18),ElevatedButton.icon(onPressed:()=>Navigator.pop(c),icon:const Icon(Icons.arrow_back),label:const Text('Back to Home'))
 ])));
}