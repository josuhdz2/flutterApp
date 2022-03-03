import 'package:flutter/material.dart';
class ThirtScreen extends StatelessWidget
{
  const ThirtScreen({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Pantalla de informacion")
      ),
      body: Center(
        child:Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              Image.asset(
                'assets/images/foto.jpg',
                width: 200.0
              ),
              SizedBox(height: 20.0,),
              Text(
                "Josue Hernandez Chavez",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0
                )
              ),
              SizedBox(height: 20.0,),
              Text(
                "TI01SM-20, Desarrollo movil",
                style: const TextStyle(
                  fontSize: 20.0
                ),
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                child: Text("Regresar"),
                onPressed:()
                {
                  Navigator.pop(context);
                }
              )
            ],
          
        )
      )
      
    );
  }
}