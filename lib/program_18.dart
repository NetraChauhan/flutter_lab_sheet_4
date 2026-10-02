// 18. Form accepts student's name and displays it on a new screen after Submit.
import 'package:flutter/material.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(colorSchemeSeed:Colors.blue,useMaterial3:true),home:const FormPage());
}
class FormPage extends StatefulWidget{const FormPage({super.key});State<FormPage> createState()=>_S();}
class _S extends State<FormPage>{
 final name=TextEditingController();
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Student Form'),centerTitle:true),body:Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.all(28),child:SizedBox(width:400,child:Column(children:[
  TextField(controller:name,decoration:const InputDecoration(labelText:'Student Name',prefixIcon:Icon(Icons.person),border:OutlineInputBorder())),const SizedBox(height:16),
  SizedBox(width:double.infinity,child:FilledButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Display(name.text))),child:const Text('Submit')))
 ])))));
}
class Display extends StatelessWidget{
 final String name;
 const Display(this.name,{super.key});
 Widget build(c)=>Scaffold(appBar:AppBar(title:const Text('Submitted Name')),body:Align(alignment:Alignment.topCenter,child:Column(mainAxisSize:MainAxisSize.min,children:[const Icon(Icons.check_circle,size:70,color:Colors.green),const Text('Student Name',style:TextStyle(fontSize:18)),Text(name,style:const TextStyle(fontSize:28,fontWeight:FontWeight.bold))])));
}