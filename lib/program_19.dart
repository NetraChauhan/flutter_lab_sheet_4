// 19. Pass two numbers to another screen and display their sum.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.green,useMaterial3:true),home:const Input());
}
class Input extends StatefulWidget{const Input({super.key});State<Input> createState()=>_S();}
class _S extends State<Input>{
 final a=TextEditingController(),b=TextEditingController();
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Pass Two Numbers'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(26),child:SizedBox(width:400,child:Column(children:[
  TextField(controller:a,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'First Number',border:OutlineInputBorder())),const SizedBox(height:12),
  TextField(controller:b,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Second Number',border:OutlineInputBorder())),const SizedBox(height:16),
  FilledButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Sum(double.tryParse(a.text)??0,double.tryParse(b.text)??0))),child:const Text('Pass Numbers'))
 ])))));
}
class Sum extends StatelessWidget{
 final double a,b;
 const Sum(this.a,this.b,{super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Sum')),body:Align(alignment:Alignment.topCenter,child:Container(padding:const EdgeInsets.all(24),decoration:BoxDecoration(color:Colors.green.shade50,borderRadius:BorderRadius.circular(18)),child:Text('$a + $b = ${a+b}',style:const TextStyle(fontSize:28,fontWeight:FontWeight.bold)))));
}