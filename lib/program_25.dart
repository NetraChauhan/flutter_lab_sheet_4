// 25. Student Management app with Home, Profile, Attendance and Result screens.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.green,useMaterial3:true),
    home:const Home(),
  );
}

void open(BuildContext c,Widget p)=>
  Navigator.push(c,MaterialPageRoute(builder:(_)=>p));

class Home extends StatelessWidget{
  const Home({super.key});

  Widget build(c)=>Scaffold(
    appBar:AppBar(title:const Text('Student Management'),centerTitle:true),
    body:Align(
      alignment:Alignment.topCenter,
      child:Padding(
        padding:const EdgeInsets.all(24),
        child:SizedBox(
          width:430,
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children:[
              Container(
                padding:const EdgeInsets.all(18),
                decoration:BoxDecoration(
                  color:Colors.green.shade50,
                  borderRadius:BorderRadius.circular(18),
                ),
                child:const Row(children:[
                  CircleAvatar(radius:32,child:Text('AR')),
                  SizedBox(width:14),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children:[
                      Text('Aiden Rowan',
                        style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)),
                      Text('BCA • 5th Semester'),
                    ],
                  ),
                ]),
              ),
              const SizedBox(height:18),
              Card(
                child:ListTile(
                  leading:const Icon(Icons.person,color:Colors.green),
                  title:const Text('Student Profile'),
                  trailing:const Icon(Icons.arrow_forward_ios,size:17),
                  onTap:()=>open(c,const Profile()),
                ),
              ),
              Card(
                child:ListTile(
                  leading:const Icon(Icons.calendar_month,color:Colors.green),
                  title:const Text('Attendance'),
                  trailing:const Icon(Icons.arrow_forward_ios,size:17),
                  onTap:()=>open(c,const Attendance()),
                ),
              ),
              Card(
                child:ListTile(
                  leading:const Icon(Icons.grade,color:Colors.green),
                  title:const Text('Result'),
                  trailing:const Icon(Icons.arrow_forward_ios,size:17),
                  onTap:()=>open(c,const Result()),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class Profile extends StatelessWidget{
  const Profile({super.key});
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:const Text('Student Profile')),
    body:const Align(
      alignment:Alignment.topCenter,
      child:Padding(
        padding:EdgeInsets.all(26),
        child:SizedBox(
          width:400,
          child:Column(children:[
            CircleAvatar(radius:42,child:Text('AR')),
            SizedBox(height:14),
            ListTile(leading:Icon(Icons.person),title:Text('Name'),subtitle:Text('Aiden Rowan')),
            ListTile(leading:Icon(Icons.badge),title:Text('Roll Number'),subtitle:Text('S204')),
            ListTile(leading:Icon(Icons.school),title:Text('Course'),subtitle:Text('BCA • 5th Semester')),
          ]),
        ),
      ),
    ),
  );
}

class Attendance extends StatelessWidget{
  const Attendance({super.key});
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:const Text('Attendance')),
    body:Align(
      alignment:Alignment.topCenter,
      child:Padding(
        padding:const EdgeInsets.all(28),
        child:SizedBox(
          width:380,
          child:Column(children:[
            const Icon(Icons.calendar_month,size:62,color:Colors.green),
            const Text('92%',
              style:TextStyle(fontSize:40,fontWeight:FontWeight.bold)),
            const Text('Overall Attendance'),
            const SizedBox(height:16),
            Card(
              color:Colors.green.shade50,
              child:const Padding(
                padding:EdgeInsets.all(16),
                child:Column(children:[
                  Text('Flutter: 94%'),
                  Text('Database: 90%'),
                  Text('Networking: 92%'),
                ]),
              ),
            ),
          ]),
        ),
      ),
    ),
  );
}

class Result extends StatelessWidget{
  const Result({super.key});
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:const Text('Result')),
    body:Align(
      alignment:Alignment.topCenter,
      child:Padding(
        padding:const EdgeInsets.all(28),
        child:SizedBox(
          width:380,
          child:Card(
            child:Padding(
              padding:const EdgeInsets.all(22),
              child:Column(
                mainAxisSize:MainAxisSize.min,
                children:const[
                  Icon(Icons.emoji_events,size:58,color:Colors.amber),
                  Text('PASS',
                    style:TextStyle(fontSize:28,fontWeight:FontWeight.bold,color:Colors.green)),
                  SizedBox(height:10),
                  Text('Total: 258 / 300'),
                  Text('Percentage: 86.00%'),
                  Text('Grade: A'),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
