import 'package:flutter/material.dart';
class FifthScreen extends StatelessWidget
{
  const FifthScreen({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("Pagina de posicionamiento")
      ),
      body: Center
      (
        child: SizedBox
        (
          width: 300.0,
          height: 400.0,
          child: Center
          (
            child: Stack
            (
              clipBehavior: Clip.antiAliasWithSaveLayer,
              fit: StackFit.expand,
              overflow: Overflow.visible,
              children: <Widget>
              [
                Positioned
                (
                  //top: -20.0,
                  //left: -20.0,
                  child: Container
                  (
                    width: 200.0,
                    height: 200.0,
                    //color: Colors.purple,
                    decoration: const BoxDecoration
                    (
                      //color: Colors.purple,
                      image: DecorationImage
                      (
                        image: AssetImage('assets/images/foto.jpg'),
                        scale: 1.0
                      )
                    )
                  ),
                ),
                Positioned
                (
                  top: 200.0,
                  left: 5.0,
                  child: Text
                  (
                    "Josue Hernandez Chavez",
                    style: const TextStyle
                    (
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white
                    )
                  ),
                ),
                Positioned
                (
                  top: 250.0,
                  left: 100.0,
                  child: ElevatedButton
                  (
                    child: Text("Regresar"),
                    onPressed:()
                    {
                      Navigator.pop(context);
                    }
                  )
                )
              ],
            ),
          ),
        )
      )
    );
  }
}