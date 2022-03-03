import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget
{
  const SecondScreen({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("segunda pagina")
      ),
      body: Center
        (
          child: ElevatedButton
          (
            child: Text("Regresar"),
            onPressed:()
            {
              Navigator.pop(context);
            }
          )
      )
    );
  }
}