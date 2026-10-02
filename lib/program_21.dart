// 21. Student List and Student Detail; display selected student's information.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.pink,useMaterial3:true),home:const Students());
}
class Students extends StatelessWidget{
 const Students({super.key});
 Widget build(c){final data=[('Netra Chauhan','243026210','BCA'),('Ritika Bansal','243026244','BCA'),('Shatakshi Dhiman','243026274','BCA')];
  return Scaffold(appBar:AppBar(title:const Text('Student List'),centerTitle:true),body:ListView.separated(padding:const EdgeInsets.all(20),itemCount:data.length,separatorBuilder:(_,__)=>const Divider(),itemBuilder:(c,i){
   final s=data[i];return ListTile(leading:CircleAvatar(child:Text(s.$1[0])),title:Text(s.$1),subtitle:Text('Roll No: ${s.$2}'),trailing:const Icon(Icons.arrow_forward_ios,size:16),
    onTap:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Detail(s.$1,s.$2,s.$3))));
  }));}
}
class Detail extends StatelessWidget{
 final String name,roll,course;
 const Detail(this.name,this.roll,this.course,{super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Student Detail')),body:Align(alignment:Alignment.topCenter,child:Card(child:Padding(padding:const EdgeInsets.all(24),child:Column(mainAxisSize:MainAxisSize.min,children:[
  CircleAvatar(radius:38,child:Text(name[0],style:const TextStyle(fontSize:25))),const SizedBox(height:10),Text(name,style:const TextStyle(fontSize:24,fontWeight:FontWeight.bold)),Text('Roll No: $roll'),Text('Course: $course')
 ])))));
}