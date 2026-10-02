// 23. Simple college app with Home, Courses, Faculty and Contact screens.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.teal,useMaterial3:true),home:const Main());
}
class Main extends StatefulWidget{const Main({super.key});State<Main> createState()=>_S();}
class _S extends State<Main>{
 int i=0;
 final titles=const['Home','Courses','Faculty','Contact'];
 final pages=const[
  _Page(Icons.account_balance,'COER University','Welcome to the college app'),
  _Page(Icons.menu_book,'Courses','BCA • BBA • B.Tech'),
  _Page(Icons.groups,'Faculty','Experienced faculty members'),
  _Page(Icons.contact_phone,'Contact','Email: info@coeruniversity.ac.in')
 ];
 Widget build(c)=>Scaffold(appBar:AppBar(title:Text(titles[i]),centerTitle:true),body:pages[i],
  bottomNavigationBar:BottomNavigationBar(type:BottomNavigationBarType.fixed,currentIndex:i,onTap:(v)=>setState(()=>i=v),items:const[
   BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
   BottomNavigationBarItem(icon:Icon(Icons.menu_book),label:'Courses'),
   BottomNavigationBarItem(icon:Icon(Icons.groups),label:'Faculty'),
   BottomNavigationBarItem(icon:Icon(Icons.contact_phone),label:'Contact')
  ]));
}
class _Page extends StatelessWidget{
 final IconData icon;final String title,text;
 const _Page(this.icon,this.title,this.text);
 Widget build(c)=>Center(child:Column(mainAxisSize:MainAxisSize.min,children:[Icon(icon,size:70,color:Colors.teal),const SizedBox(height:10),Text(title,style:const TextStyle(fontSize:25,fontWeight:FontWeight.bold)),Text(text,textAlign:TextAlign.center)]));
}