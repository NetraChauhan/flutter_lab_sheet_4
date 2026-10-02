// 14. Home, Courses and Contact screens using BottomNavigationBar.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.green,useMaterial3:true),home:const Main());
}
class Main extends StatefulWidget{const Main({super.key});State<Main> createState()=>_S();}
class _S extends State<Main>{
 int i=0;
 final pages=const[
  _P(Icons.home,'Home','Welcome to the college app'),
  _P(Icons.menu_book,'Courses','BCA • BBA • B.Tech'),
  _P(Icons.contact_phone,'Contact','contact@coeruniversity.ac.in')
 ];
 Widget build(c)=>Scaffold(appBar:AppBar(title:Text(['Home','Courses','Contact'][i]),centerTitle:true),body:pages[i],
  bottomNavigationBar:BottomNavigationBar(currentIndex:i,onTap:(v)=>setState(()=>i=v),items:const[
   BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
   BottomNavigationBarItem(icon:Icon(Icons.menu_book),label:'Courses'),
   BottomNavigationBarItem(icon:Icon(Icons.contact_phone),label:'Contact')
  ]));
}
class _P extends StatelessWidget{
 final IconData icon;final String title,text;
 const _P(this.icon,this.title,this.text);
 Widget build(c)=>Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[Icon(icon,size:66,color:Colors.green),Text(title,style:const TextStyle(fontSize:25,fontWeight:FontWeight.bold)),const SizedBox(height:6),Text(text)]));
}