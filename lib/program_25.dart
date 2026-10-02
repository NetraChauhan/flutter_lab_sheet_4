// 25. Student Management app: Home, Profile, Attendance and Result with navigation.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.green,useMaterial3:true),home:const Home());
}
void open(BuildContext c,Widget p)=>Navigator.push(c,MaterialPageRoute(builder:(_)=>p));
class Home extends StatelessWidget{
 const Home({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Student Management'),centerTitle:true),body:SingleChildScrollView(padding:const EdgeInsets.all(24),child:Column(children:[
  Container(width:double.infinity,padding:const EdgeInsets.all(20),decoration:BoxDecoration(color:Colors.green.shade50,borderRadius:BorderRadius.circular(18)),child:const Column(children:[
   CircleAvatar(radius:38,child:Text('NC',style:TextStyle(fontSize:22,fontWeight:FontWeight.bold))),SizedBox(height:10),
   Text('Netra Chauhan',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),Text('BCA • 5th Semester • COER University')
  ])),const SizedBox(height:18),
  Row(children:[
   Expanded(child:_Tile(Icons.person,'Profile',()=>open(c,const Profile()))),const SizedBox(width:12),
   Expanded(child:_Tile(Icons.calendar_month,'Attendance',()=>open(c,const Attendance())))
  ]),const SizedBox(height:12),
  SizedBox(width:double.infinity,child:_Tile(Icons.grade,'Result',()=>open(c,const Result())))
 ])));
}
class _Tile extends StatelessWidget{
 final IconData icon;final String text;final VoidCallback tap;
 const _Tile(this.icon,this.text,this.tap);
 Widget build(c)=>Card(child:InkWell(onTap:tap,borderRadius:BorderRadius.circular(12),child:Padding(padding:const EdgeInsets.all(20),child:Column(children:[Icon(icon,size:38,color:Colors.green),const SizedBox(height:6),Text(text,style:const TextStyle(fontWeight:FontWeight.bold))]))));
}
class Profile extends StatelessWidget{
 const Profile({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Student Profile')),body:const Padding(padding:EdgeInsets.all(26),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
  Center(child:CircleAvatar(radius:45,child:Text('NC',style:TextStyle(fontSize:24)))),SizedBox(height:16),
  ListTile(leading:Icon(Icons.person),title:Text('Name'),subtitle:Text('Netra Chauhan')),
  ListTile(leading:Icon(Icons.badge),title:Text('Roll Number'),subtitle:Text('243026210')),
  ListTile(leading:Icon(Icons.school),title:Text('Course'),subtitle:Text('BCA • 5th Semester'))
 ])));
}
class Attendance extends StatelessWidget{
 const Attendance({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Attendance')),body:Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Icon(Icons.calendar_month,size:70,color:Colors.green),const Text('92%',style:TextStyle(fontSize:42,fontWeight:FontWeight.bold)),const Text('Overall Attendance'),const SizedBox(height:12),
  Container(width:280,padding:const EdgeInsets.all(16),color:Colors.green.shade50,child:const Column(children:[Text('Flutter: 94%'),Text('Database: 90%'),Text('Networking: 92%')]))
 ])));
}
class Result extends StatelessWidget{
 const Result({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Result')),body:Align(alignment:Alignment.topCenter,child:Card(child:Padding(padding:const EdgeInsets.all(24),child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Icon(Icons.emoji_events,size:65,color:Colors.amber),const Text('PASS',style:TextStyle(fontSize:30,fontWeight:FontWeight.bold,color:Colors.green)),const SizedBox(height:8),
  const Text('Total: 258 / 300'),const Text('Percentage: 86.00%'),const Text('Grade: A')
 ])))));
}