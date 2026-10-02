// 12. Open different screens using Navigation Drawer options.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.red,useMaterial3:true),home:const Home());
}
void go(BuildContext c,String title,IconData icon)=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Screen(title,icon)));
class Home extends StatelessWidget{
 const Home({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Navigation Drawer')),drawer:Drawer(child:ListView(children:[
  const DrawerHeader(child:Center(child:Text('Open a Screen',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)))),
  ListTile(leading:const Icon(Icons.person),title:const Text('Profile'),onTap:()=>go(c,'Profile',Icons.person)),
  ListTile(leading:const Icon(Icons.book),title:const Text('Courses'),onTap:()=>go(c,'Courses',Icons.book)),
  ListTile(leading:const Icon(Icons.contact_mail),title:const Text('Contact'),onTap:()=>go(c,'Contact',Icons.contact_mail))
 ])),body:const Align(alignment:Alignment.topCenter,child:Text('Open the drawer and choose a screen',style:TextStyle(fontSize:20))));
}
class Screen extends StatelessWidget{
 final String title;final IconData icon;
 const Screen(this.title,this.icon,{super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:Text(title)),body:Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[Icon(icon,size:70,color:Colors.red),Text('$title Screen',style:const TextStyle(fontSize:25,fontWeight:FontWeight.bold))])));
}