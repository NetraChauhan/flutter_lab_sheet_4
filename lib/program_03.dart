// 3. Home, Profile and Settings screens with navigation.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.orange,useMaterial3:true),
    home:const Home(),
  );
}

void open(BuildContext c,Widget p)=>
  Navigator.push(c,MaterialPageRoute(builder:(_)=>p));

class Home extends StatelessWidget{
  const Home({super.key});
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:const Text('Home'),centerTitle:true),
    body:Align(
      alignment:Alignment.topCenter,
      child:Padding(
        padding:const EdgeInsets.all(24),
        child:SizedBox(
          width:420,
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children:[
              const Text(
                'Student Menu',
                style:TextStyle(fontSize:26,fontWeight:FontWeight.bold),
              ),
              const Text('Choose a screen to continue'),
              const SizedBox(height:20),
              Card(
                child:ListTile(
                  leading:const CircleAvatar(child:Icon(Icons.person)),
                  title:const Text('Profile'),
                  subtitle:const Text('View student information'),
                  trailing:const Icon(Icons.arrow_forward_ios,size:18),
                  onTap:()=>open(c,const Profile()),
                ),
              ),
              const SizedBox(height:10),
              Card(
                child:ListTile(
                  leading:const CircleAvatar(child:Icon(Icons.settings)),
                  title:const Text('Settings'),
                  subtitle:const Text('View app settings'),
                  trailing:const Icon(Icons.arrow_forward_ios,size:18),
                  onTap:()=>open(c,const Settings()),
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
    appBar:AppBar(title:const Text('Profile')),
    body:Align(
      alignment:Alignment.topCenter,
      child:Padding(
        padding:const EdgeInsets.all(28),
        child:Column(
          mainAxisSize:MainAxisSize.min,
          children:[
            const CircleAvatar(
              radius:45,
              child:Icon(Icons.person,size:48),
            ),
            const SizedBox(height:12),
            const Text(
              'Netra Chauhan',
              style:TextStyle(fontSize:24,fontWeight:FontWeight.bold),
            ),
            const Text('BCA • 5th Semester'),
            const SizedBox(height:20),
            ElevatedButton.icon(
              onPressed:()=>open(c,const Settings()),
              icon:const Icon(Icons.settings),
              label:const Text('Open Settings'),
            ),
          ],
        ),
      ),
    ),
  );
}

class Settings extends StatelessWidget{
  const Settings({super.key});
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:const Text('Settings')),
    body:Align(
      alignment:Alignment.topCenter,
      child:Padding(
        padding:const EdgeInsets.all(24),
        child:SizedBox(
          width:420,
          child:Column(
            children:[
              const ListTile(
                leading:Icon(Icons.notifications),
                title:Text('Notifications'),
                trailing:Icon(Icons.toggle_on,size:38),
              ),
              const Divider(),
              const ListTile(
                leading:Icon(Icons.dark_mode),
                title:Text('Dark Mode'),
                trailing:Icon(Icons.toggle_off,size:38),
              ),
              const SizedBox(height:16),
              ElevatedButton.icon(
                onPressed:()=>open(c,const Profile()),
                icon:const Icon(Icons.person),
                label:const Text('Open Profile'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
