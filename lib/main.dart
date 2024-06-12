import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.grey,
            fontSize: 21
          ),
          children:<TextSpan> [
            TextSpan(text:'Hello'),
            TextSpan(text: 'Sakshi', style: TextStyle(fontSize: 24,color: Colors.blue,fontWeight: FontWeight.bold)),
            TextSpan(text: ' Welcome to '),
            TextSpan(text: 'Flutter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 33,
              color: Colors.deepOrangeAccent,
              fontStyle: FontStyle.italic
            ))

          ]
        ),
      )

      //normal way to change styles of text
     /* Row(
        children: [
          Text('Hello ', style: TextStyle(fontSize: 26,color: Colors.grey),),
          Text('Sakshi', style:TextStyle(fontSize: 34,
          color: Colors.blue,
          fontWeight: FontWeight.bold)),
        ],
      ),  */


    );
  }
}
