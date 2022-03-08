import 'package:flutter/material.dart';
import 'pages/fourthScreen.dart';
import 'pages/secondScreen.dart';
import 'pages/thirtScreen.dart';
import 'pages/fifthScreen.dart';
import 'pages/sixthScreen.dart';

void main()
{
  runApp(MaterialApp
  (
    debugShowCheckedModeBanner: false,
    title: 'DemoFlutter',
    initialRoute: '/',
    routes: {
      '/':(context) => const HomePage(),
      '/second':(context) => const SecondScreen(),
      '/info':(context)=> const ThirtScreen(),
      '/fourth':(context)=>const FourthScreen(),
      '/fifth':(context)=>const FifthScreen(),
      '/sixth':(context)=>SixthScreen()
    }
    //home: HomePage()
  ));
}

class HomePage extends StatelessWidget
{
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
        appBar: AppBar
        (
          leading: Icon(Icons.menu),
          elevation: 20.0,
          shadowColor: Colors.red,
          title: Text("Hola mundo"),
          shape: const RoundedRectangleBorder
          (
            borderRadius: BorderRadius.vertical
            (
              bottom: Radius.circular(15)
            )
          ),
          backgroundColor: Colors.red,
          iconTheme: IconThemeData(color: Colors.black),
          actions:<Widget>
          [
            IconButton
            (
              onPressed:()=>{},
              icon: const Icon(Icons.search)
            )
          ]
        ),
        body: Center(
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              ElevatedButton(
                onPressed: (){
                  //final route=MaterialPageRoute(builder: (context)=>SecondScreen());
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text("segunda pantalla"),
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: (){
                  //final route=MaterialPageRoute(builder: (context)=>ThirtScreen());
                  Navigator.pushNamed(context, '/info');
                },
                child: const Text("Informacion")
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: (){
                  //final route=MaterialPageRoute(builder: (context)=>ThirtScreen());
                  Navigator.pushNamed(context, '/fourth');
                },
                child: const Text("Stack")
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: (){
                  //final route=MaterialPageRoute(builder: (context)=>ThirtScreen());
                  Navigator.pushNamed(context, '/fifth');
                },
                child: const Text("Datos en Stack")
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: (){
                  //final route=MaterialPageRoute(builder: (context)=>ThirtScreen());
                  Navigator.pushNamed(context, '/sixth');
                },
                child: const Text("Fkormulario")
              ),
            ],
          )
        ),
    );
  }
}