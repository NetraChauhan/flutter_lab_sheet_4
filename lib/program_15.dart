// 15. Home Screen buttons for Student Profile, Attendance and Result.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.purple,useMaterial3:true),home:const Home());
}
void open(BuildContext c,String title,IconData icon,String text)=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Info(title,icon,text)));
class Home extends StatelessWidget{
 const Home({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Student Dashboard'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(26),child:SizedBox(width:430,child:Column(children:[
  const Text('Choose a Section',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),const SizedBox(height:18),
  SizedBox(width:double.infinity,child:FilledButton.icon(onPressed:()=>open(c,'Student Profile',Icons.person,'Netra Chauhan\nBCA • 5th Semester'),icon:const Icon(Icons.person),label:const Text('Student Profile'))),const SizedBox(height:12),
  SizedBox(width:double.infinity,child:FilledButton.tonalIcon(onPressed:()=>open(c,'Attendance',Icons.calendar_month,'Overall Attendance: 92%'),icon:const Icon(Icons.calendar_month),label:const Text('Attendance'))),const SizedBox(height:12),
  SizedBox(width:double.infinity,child:OutlinedButton.icon(onPressed:()=>open(c,'Result',Icons.grade,'Result: PASS\nPercentage: 86%'),icon:const Icon(Icons.grade),label:const Text('Result')))
 ])))));
}
class Info extends StatelessWidget{
 final String title,text;final IconData icon;
 const Info(this.title,this.icon,this.text,{super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:Text(title)),body:Center(child:Column(mainAxisSize:MainAxisSize.min,children:[Icon(icon,size:70,color:Colors.purple),const SizedBox(height:10),Text(title,style:const TextStyle(fontSize:25,fontWeight:FontWeight.bold)),const SizedBox(height:8),Text(text,textAlign:TextAlign.center,style:const TextStyle(fontSize:18))])));
}