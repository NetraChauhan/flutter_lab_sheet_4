// 23. College app with Home, Courses, Faculty and Contact screens.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.teal,useMaterial3:true),
    home:const Main(),
  );
}

class Main extends StatefulWidget{
  const Main({super.key});
  State<Main> createState()=>_S();
}

class _S extends State<Main>{
  int i=0;
  final pages=const[HomePage(),Courses(),Faculty(),Contact()];

  Widget build(c)=>Scaffold(
    appBar:AppBar(
      title:Text(['Home','Courses','Faculty','Contact'][i]),
      centerTitle:true,
    ),
    body:pages[i],
    bottomNavigationBar:BottomNavigationBar(
      type:BottomNavigationBarType.fixed,
      currentIndex:i,
      onTap:(v)=>setState(()=>i=v),
      items:const[
        BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
        BottomNavigationBarItem(icon:Icon(Icons.menu_book),label:'Courses'),
        BottomNavigationBarItem(icon:Icon(Icons.groups),label:'Faculty'),
        BottomNavigationBarItem(icon:Icon(Icons.contact_phone),label:'Contact'),
      ],
    ),
  );
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  Widget build(c)=>const Align(
    alignment:Alignment.topCenter,
    child:Padding(
      padding:EdgeInsets.all(28),
      child:Column(mainAxisSize:MainAxisSize.min,children:[
        Icon(Icons.account_balance,size:68,color:Colors.teal),
        SizedBox(height:10),
        Text('Northfield College',
          style:TextStyle(fontSize:26,fontWeight:FontWeight.bold)),
        Text('College Information Portal'),
      ]),
    ),
  );
}

class Courses extends StatelessWidget{
  const Courses({super.key});
  Widget build(c)=>ListView(
    padding:const EdgeInsets.all(20),
    children:const[
      Card(child:ListTile(leading:Icon(Icons.computer),title:Text('BCA'),subtitle:Text('Bachelor of Computer Applications'))),
      Card(child:ListTile(leading:Icon(Icons.business),title:Text('BBA'),subtitle:Text('Bachelor of Business Administration'))),
      Card(child:ListTile(leading:Icon(Icons.engineering),title:Text('B.Tech'),subtitle:Text('Bachelor of Technology'))),
    ],
  );
}

class Faculty extends StatelessWidget{
  const Faculty({super.key});
  Widget build(c)=>ListView(
    padding:const EdgeInsets.all(20),
    children:const[
      ListTile(leading:CircleAvatar(child:Text('A')),title:Text('Dr. Arin Cole'),subtitle:Text('Computer Applications')),
      ListTile(leading:CircleAvatar(child:Text('M')),title:Text('Prof. Maya Reed'),subtitle:Text('Management')),
      ListTile(leading:CircleAvatar(child:Text('R')),title:Text('Dr. Rohan Blake'),subtitle:Text('Engineering')),
    ],
  );
}

class Contact extends StatelessWidget{
  const Contact({super.key});
  Widget build(c)=>const Align(
    alignment:Alignment.topCenter,
    child:Padding(
      padding:EdgeInsets.all(28),
      child:SizedBox(
        width:400,
        child:Column(children:[
          ListTile(leading:Icon(Icons.email),title:Text('Email'),subtitle:Text('info@northfield.edu')),
          ListTile(leading:Icon(Icons.phone),title:Text('Phone'),subtitle:Text('+91 98765 43210')),
          ListTile(leading:Icon(Icons.location_on),title:Text('Address'),subtitle:Text('Academic City, India')),
        ]),
      ),
    ),
  );
}
