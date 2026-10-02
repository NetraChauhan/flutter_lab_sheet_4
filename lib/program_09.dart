// 9. BottomNavigationBar with Home, Profile and Settings screens.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.deepPurple,useMaterial3:true),home:const Main());
}
class Main extends StatefulWidget{const Main({super.key});State<Main> createState()=>_S();}
class _S extends State<Main>{
 int i=0;
 final pages=const[
  _Page(Icons.home_rounded,'Home','Welcome to the Home Screen'),
  _Page(Icons.person_rounded,'Profile','Netra Chauhan\nBCA • 5th Semester'),
  _Page(Icons.settings_rounded,'Settings','Manage your app settings here')
 ];
 Widget build(c)=>Scaffold(appBar:AppBar(title:Text(['Home','Profile','Settings'][i]),centerTitle:true),body:pages[i],
  bottomNavigationBar:BottomNavigationBar(currentIndex:i,onTap:(v)=>setState(()=>i=v),items:const[
   BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
   BottomNavigationBarItem(icon:Icon(Icons.person),label:'Profile'),
   BottomNavigationBarItem(icon:Icon(Icons.settings),label:'Settings')
  ]));
}
class _Page extends StatelessWidget{
 final IconData icon;final String title,text;
 const _Page(this.icon,this.title,this.text);
 Widget build(c)=>Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[Icon(icon,size:68,color:Colors.deepPurple),const SizedBox(height:10),Text(title,style:const TextStyle(fontSize:25,fontWeight:FontWeight.bold)),const SizedBox(height:6),Text(text,textAlign:TextAlign.center)]));
}