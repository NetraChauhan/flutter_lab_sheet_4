// 24. Shopping app with Home, Products, Cart and Profile using BottomNavigationBar.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.deepOrange,useMaterial3:true),
    home:const Shop(),
  );
}

class Shop extends StatefulWidget{
  const Shop({super.key});
  State<Shop> createState()=>_S();
}

class _S extends State<Shop>{
  int i=0;
  final pages=const[ShopHome(),Products(),Cart(),Profile()];

  Widget build(c)=>Scaffold(
    appBar:AppBar(
      title:Text(['Shop Home','Products','Cart','Profile'][i]),
      centerTitle:true,
    ),
    body:pages[i],
    bottomNavigationBar:BottomNavigationBar(
      type:BottomNavigationBarType.fixed,
      currentIndex:i,
      onTap:(v)=>setState(()=>i=v),
      items:const[
        BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
        BottomNavigationBarItem(icon:Icon(Icons.shopping_bag),label:'Products'),
        BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label:'Cart'),
        BottomNavigationBarItem(icon:Icon(Icons.person),label:'Profile'),
      ],
    ),
  );
}

class ShopHome extends StatelessWidget{
  const ShopHome({super.key});
  Widget build(c)=>const Align(
    alignment:Alignment.topCenter,
    child:Padding(
      padding:EdgeInsets.all(28),
      child:Column(mainAxisSize:MainAxisSize.min,children:[
        Icon(Icons.storefront,size:72,color:Colors.deepOrange),
        SizedBox(height:10),
        Text('Orange Cart',
          style:TextStyle(fontSize:27,fontWeight:FontWeight.bold)),
        Text('Browse products, manage your cart and profile'),
      ]),
    ),
  );
}

class Products extends StatelessWidget{
  const Products({super.key});
  Widget build(c)=>ListView(
    padding:const EdgeInsets.all(20),
    children:const[
      Card(child:ListTile(leading:Icon(Icons.headphones,size:38),title:Text('Headphones'),subtitle:Text('₹1,999'))),
      Card(child:ListTile(leading:Icon(Icons.watch,size:38),title:Text('Smart Watch'),subtitle:Text('₹2,499'))),
      Card(child:ListTile(leading:Icon(Icons.backpack,size:38),title:Text('Backpack'),subtitle:Text('₹1,299'))),
    ],
  );
}

class Cart extends StatelessWidget{
  const Cart({super.key});
  Widget build(c)=>const Align(
    alignment:Alignment.topCenter,
    child:Padding(
      padding:EdgeInsets.all(28),
      child:SizedBox(
        width:400,
        child:Column(children:[
          Icon(Icons.shopping_cart_outlined,size:66,color:Colors.deepOrange),
          SizedBox(height:10),
          Text('Your Cart',
            style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),
          Card(child:ListTile(title:Text('Headphones'),trailing:Text('₹1,999'))),
          Card(child:ListTile(title:Text('Smart Watch'),trailing:Text('₹2,499'))),
          Divider(),
          Text('Total: ₹4,498',
            style:TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
        ]),
      ),
    ),
  );
}

class Profile extends StatelessWidget{
  const Profile({super.key});
  Widget build(c)=>const Align(
    alignment:Alignment.topCenter,
    child:Padding(
      padding:EdgeInsets.all(28),
      child:Column(mainAxisSize:MainAxisSize.min,children:[
        CircleAvatar(radius:42,child:Text('MS')),
        SizedBox(height:10),
        Text('Mira Solis',
          style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),
        Text('Premium Shopper'),
      ]),
    ),
  );
}
