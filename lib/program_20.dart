// 20. Home and Product Detail Screen; pass product name and price.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.indigo,useMaterial3:true),
    home:const Home(),
  );
}

class Home extends StatelessWidget{
  const Home({super.key});

  Widget build(c)=>Scaffold(
    appBar:AppBar(title:const Text('Shopping Home'),centerTitle:true),
    body:Align(
      alignment:Alignment.topCenter,
      child:Padding(
        padding:const EdgeInsets.all(24),
        child:SizedBox(
          width:400,
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children:[
              const Text(
                'Featured Product',
                style:TextStyle(fontSize:24,fontWeight:FontWeight.bold),
              ),
              const SizedBox(height:14),
              Card(
                child:Padding(
                  padding:const EdgeInsets.all(20),
                  child:Column(children:[
                    const Icon(Icons.headphones,size:72,color:Colors.indigo),
                    const SizedBox(height:8),
                    const Text(
                      'Wireless Headphones',
                      style:TextStyle(fontSize:22,fontWeight:FontWeight.bold),
                    ),
                    const Text('₹1,999',style:TextStyle(fontSize:20)),
                    const SizedBox(height:14),
                    FilledButton(
                      onPressed:()=>Navigator.push(
                        c,
                        MaterialPageRoute(
                          builder:(_)=>const Detail('Wireless Headphones',1999),
                        ),
                      ),
                      child:const Text('View Product Details'),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class Detail extends StatelessWidget{
  final String name;
  final double price;

  const Detail(this.name,this.price,{super.key});

  Widget build(c)=>Scaffold(
    appBar:AppBar(title:const Text('Product Detail')),
    body:Align(
      alignment:Alignment.topCenter,
      child:Padding(
        padding:const EdgeInsets.all(28),
        child:Column(
          mainAxisSize:MainAxisSize.min,
          children:[
            const Icon(Icons.headphones,size:78,color:Colors.indigo),
            const SizedBox(height:12),
            Text(
              name,
              style:const TextStyle(fontSize:25,fontWeight:FontWeight.bold),
            ),
            const SizedBox(height:6),
            Text(
              'Price: ₹${price.toStringAsFixed(0)}',
              style:const TextStyle(fontSize:20),
            ),
          ],
        ),
      ),
    ),
  );
}
