// 22. Login Screen, Home Screen and Profile Screen with navigation.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.blue,useMaterial3:true),
    home:const Login(),
  );
}

class Login extends StatelessWidget{
  const Login({super.key});
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:const Text('Login'),centerTitle:true),
    body:Align(
      alignment:Alignment.topCenter,
      child:Padding(
        padding:const EdgeInsets.all(28),
        child:SizedBox(
          width:400,
          child:Column(children:[
            const Icon(Icons.lock_outline,size:58,color:Colors.blue),
            const SizedBox(height:16),
            const TextField(
              decoration:InputDecoration(
                labelText:'Username',
                prefixIcon:Icon(Icons.person),
                border:OutlineInputBorder(),
              ),
            ),
            const SizedBox(height:12),
            const TextField(
              obscureText:true,
              decoration:InputDecoration(
                labelText:'Password',
                prefixIcon:Icon(Icons.lock),
                border:OutlineInputBorder(),
              ),
            ),
            const SizedBox(height:16),
            SizedBox(
              width:double.infinity,
              child:FilledButton(
                onPressed:()=>Navigator.pushReplacement(
                  c,MaterialPageRoute(builder:(_)=>const Home())),
                child:const Text('Login'),
              ),
            ),
          ]),
        ),
      ),
    ),
  );
}

class Home extends StatelessWidget{
  const Home({super.key});
  Widget build(c)=>Scaffold(
    appBar:AppBar(title:const Text('Home'),centerTitle:true),
    body:Align(
      alignment:Alignment.topCenter,
      child:Padding(
        padding:const EdgeInsets.all(26),
        child:SizedBox(
          width:420,
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children:[
              const Text(
                'Welcome',
                style:TextStyle(fontSize:28,fontWeight:FontWeight.bold),
              ),
              const Text('You have successfully logged in.'),
              const SizedBox(height:20),
              Card(
                child:ListTile(
                  leading:const CircleAvatar(child:Icon(Icons.person)),
                  title:const Text('Student Profile'),
                  subtitle:const Text('View your profile information'),
                  trailing:const Icon(Icons.arrow_forward_ios,size:17),
                  onTap:()=>Navigator.push(
                    c,MaterialPageRoute(builder:(_)=>const Profile())),
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
        child:SizedBox(
          width:400,
          child:Column(children:[
            const CircleAvatar(
              radius:42,
              child:Text('AV',style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)),
            ),
            const SizedBox(height:12),
            const Text(
              'Aarav Vale',
              style:TextStyle(fontSize:24,fontWeight:FontWeight.bold),
            ),
            const Text('BCA • 5th Semester'),
            const SizedBox(height:16),
            const Card(
              child:ListTile(
                leading:Icon(Icons.school),
                title:Text('College'),
                subtitle:Text('Northfield College'),
              ),
            ),
          ]),
        ),
      ),
    ),
  );
}
