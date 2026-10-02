// 17. Pass student's name and course from first screen to second.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.orange,useMaterial3:true),home:const First());
}
class First extends StatelessWidget{
 const First({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Student Data'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(28),child:Column(mainAxisSize:MainAxisSize.min,children:[
  const ListTile(leading:CircleAvatar(child:Text('NC')),title:Text('Netra Chauhan'),subtitle:Text('Course: BCA')),
  FilledButton.icon(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>const Second('Netra Chauhan','BCA'))),icon:const Icon(Icons.send),label:const Text('Pass Student Data'))
 ]))));
}
class Second extends StatelessWidget{
 final String name,course;
 const Second(this.name,this.course,{super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Student Details')),body:Center(child:Card(child:Padding(padding:const EdgeInsets.all(24),child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Icon(Icons.school,size:58,color:Colors.orange),Text(name,style:const TextStyle(fontSize:24,fontWeight:FontWeight.bold)),Text('Course: $course',style:const TextStyle(fontSize:18))
 ])))));
}