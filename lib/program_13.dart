// 13. AppBar and navigation drawer with icons and text menu items.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.blueGrey,useMaterial3:true),home:const Home());
}
class Home extends StatelessWidget{
 const Home({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('College App'),centerTitle:true),drawer:Drawer(child:ListView(padding:EdgeInsets.zero,children:[
  const DrawerHeader(decoration:BoxDecoration(color:Colors.blueGrey),child:Center(child:Text('COER University',style:TextStyle(color:Colors.white,fontSize:22,fontWeight:FontWeight.bold)))),
  const ListTile(leading:Icon(Icons.home),title:Text('Home')),
  const ListTile(leading:Icon(Icons.school),title:Text('Courses')),
  const ListTile(leading:Icon(Icons.people),title:Text('Faculty')),
  const ListTile(leading:Icon(Icons.phone),title:Text('Contact')),
  const ListTile(leading:Icon(Icons.settings),title:Text('Settings'))
 ])),body:const Align(alignment:Alignment.topCenter,child:Padding(padding:EdgeInsets.all(30),child:Column(mainAxisSize:MainAxisSize.min,children:[
  Icon(Icons.account_balance,size:70,color:Colors.blueGrey),SizedBox(height:10),Text('College Home',style:TextStyle(fontSize:26,fontWeight:FontWeight.bold)),Text('Use the drawer to view menu items')
 ]))));
}