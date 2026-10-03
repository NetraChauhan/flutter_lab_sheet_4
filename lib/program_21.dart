// 21. Student List and Student Detail; display selected student's information.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.pink,useMaterial3:true),
    home:const Students(),
  );
}

class Students extends StatelessWidget{
  const Students({super.key});

  Widget build(c){
    final data=[
      ('Aarav Vale','S101','BCA'),
      ('Mira Solis','S102','BBA'),
      ('Kabir Rowan','S103','B.Tech'),
    ];

    return Scaffold(
      appBar:AppBar(title:const Text('Student List'),centerTitle:true),
      body:ListView.separated(
        padding:const EdgeInsets.all(20),
        itemCount:data.length,
        separatorBuilder:(_,__)=>const SizedBox(height:10),
        itemBuilder:(c,i){
          final s=data[i];
          return Card(
            child:ListTile(
              leading:CircleAvatar(child:Text(s.$1[0])),
              title:Text(s.$1,style:const TextStyle(fontWeight:FontWeight.bold)),
              subtitle:Text('Roll No: ${s.$2} • ${s.$3}'),
              trailing:const Icon(Icons.arrow_forward_ios,size:16),
              onTap:()=>Navigator.push(
                c,
                MaterialPageRoute(builder:(_)=>Detail(s.$1,s.$2,s.$3)),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Detail extends StatelessWidget{
  final String name,roll,course;
  const Detail(this.name,this.roll,this.course,{super.key});

  Widget build(c)=>Scaffold(
    appBar:AppBar(title:const Text('Student Detail')),
    body:Align(
      alignment:Alignment.topCenter,
      child:Padding(
        padding:const EdgeInsets.all(28),
        child:SizedBox(
          width:380,
          child:Card(
            child:Padding(
              padding:const EdgeInsets.all(24),
              child:Column(
                mainAxisSize:MainAxisSize.min,
                children:[
                  CircleAvatar(
                    radius:40,
                    child:Text(name[0],style:const TextStyle(fontSize:26)),
                  ),
                  const SizedBox(height:12),
                  Text(name,style:const TextStyle(fontSize:24,fontWeight:FontWeight.bold)),
                  const SizedBox(height:12),
                  ListTile(
                    leading:const Icon(Icons.badge),
                    title:const Text('Roll Number'),
                    subtitle:Text(roll),
                  ),
                  ListTile(
                    leading:const Icon(Icons.school),
                    title:const Text('Course'),
                    subtitle:Text(course),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
