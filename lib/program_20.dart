// 20. Home and Product Detail Screen; pass product name and price.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.indigo,useMaterial3:true),home:const Home());
}
class Home extends StatelessWidget{
 const Home({super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Products'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(26),child:SizedBox(width:400,child:Card(child:Padding(padding:const EdgeInsets.all(20),child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Icon(Icons.headphones,size:72,color:Colors.indigo),const Text('Wireless Headphones',style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)),const Text('₹1,999',style:TextStyle(fontSize:20)),const SizedBox(height:14),
  FilledButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>const Detail('Wireless Headphones',1999))),child:const Text('View Product Details'))
 ])))))));
}
class Detail extends StatelessWidget{
 final String name;final double price;
 const Detail(this.name,this.price,{super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Product Detail')),body:Center(child:Column(mainAxisSize:MainAxisSize.min,children:[
  const Icon(Icons.shopping_bag,size:70,color:Colors.indigo),Text(name,style:const TextStyle(fontSize:25,fontWeight:FontWeight.bold)),Text('Price: ₹${price.toStringAsFixed(0)}',style:const TextStyle(fontSize:20))
 ])));
}