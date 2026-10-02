// 10. BottomNavigationBar switches between three different screens.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.orange,useMaterial3:true),home:const Main());
}
class Main extends StatefulWidget{const Main({super.key});State<Main> createState()=>_S();}
class _S extends State<Main>{
 int i=0;
 final pages=const[
  _View(Icons.dashboard_rounded,'Dashboard','Quick overview of your activity'),
  _View(Icons.explore_rounded,'Explore','Discover new content'),
  _View(Icons.favorite_rounded,'Favorites','Your saved items')
 ];
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Bottom Navigation'),centerTitle:true),body:pages[i],
  bottomNavigationBar:BottomNavigationBar(currentIndex:i,onTap:(v)=>setState(()=>i=v),items:const[
   BottomNavigationBarItem(icon:Icon(Icons.dashboard),label:'Dashboard'),
   BottomNavigationBarItem(icon:Icon(Icons.explore),label:'Explore'),
   BottomNavigationBarItem(icon:Icon(Icons.favorite),label:'Favorites')
  ]));
}
class _View extends StatelessWidget{
 final IconData icon;final String title,text;
 const _View(this.icon,this.title,this.text);
 Widget build(c)=>Center(child:Container(width:320,padding:const EdgeInsets.all(24),decoration:BoxDecoration(color:Colors.orange.shade50,borderRadius:BorderRadius.circular(20)),child:Column(mainAxisSize:MainAxisSize.min,children:[Icon(icon,size:64,color:Colors.orange),Text(title,style:const TextStyle(fontSize:24,fontWeight:FontWeight.bold)),Text(text,textAlign:TextAlign.center)])));
}