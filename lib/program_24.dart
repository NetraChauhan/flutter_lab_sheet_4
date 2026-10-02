// 24. Shopping app with Home, Products, Cart and Profile using BottomNavigationBar.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.deepOrange,useMaterial3:true),home:const Shop());
}
class Shop extends StatefulWidget{const Shop({super.key});State<Shop> createState()=>_S();}
class _S extends State<Shop>{
 int i=0;
 final pages=const[
  _Home(),_Products(),_Cart(),_Profile()
 ];
 Widget build(c)=>Scaffold(appBar:AppBar(title:Text(['Shop Home','Products','Cart','Profile'][i]),centerTitle:true),body:pages[i],
  bottomNavigationBar:BottomNavigationBar(type:BottomNavigationBarType.fixed,currentIndex:i,onTap:(v)=>setState(()=>i=v),items:const[
   BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
   BottomNavigationBarItem(icon:Icon(Icons.shopping_bag),label:'Products'),
   BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label:'Cart'),
   BottomNavigationBarItem(icon:Icon(Icons.person),label:'Profile')
  ]));
}
class _Home extends StatelessWidget{
 const _Home();
 Widget build(c)=>Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[const Icon(Icons.storefront,size:78,color:Colors.deepOrange),const Text('Welcome to My Shop',style:TextStyle(fontSize:26,fontWeight:FontWeight.bold)),Text('Browse products and manage your cart',style:TextStyle(color:Colors.grey.shade700))]));
}
class _Products extends StatelessWidget{
 const _Products();
 Widget build(c)=>ListView(padding:const EdgeInsets.all(20),children:const[
  Card(child:ListTile(leading:Icon(Icons.headphones,size:38),title:Text('Headphones'),subtitle:Text('₹1,999'))),
  Card(child:ListTile(leading:Icon(Icons.watch,size:38),title:Text('Smart Watch'),subtitle:Text('₹2,499'))),
  Card(child:ListTile(leading:Icon(Icons.backpack,size:38),title:Text('Backpack'),subtitle:Text('₹1,299')))
 ]);
}
class _Cart extends StatelessWidget{
 const _Cart();
 Widget build(c)=>const Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[Icon(Icons.shopping_cart_outlined,size:72,color:Colors.deepOrange),Text('Your Cart',style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),Text('2 items • Total ₹4,498')]));
}
class _Profile extends StatelessWidget{
 const _Profile();
 Widget build(c)=>const Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[CircleAvatar(radius:42,child:Text('NC')),SizedBox(height:10),Text('Netra Chauhan',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),Text('Shop Member')]));
}