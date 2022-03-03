import 'package:flutter/material.dart';
class FourthScreen extends StatelessWidget
{
  const FourthScreen({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('Pagina para stack')
      ),
      body:/*stackSinPos()*/Center
      (
        child:SizedBox
        (
          width: 300.0,
          height: 300.0,
          child: Center
          (
            child: Stack
            (
              clipBehavior: Clip.antiAliasWithSaveLayer,
              fit: StackFit.expand,
              overflow: Overflow.visible,
              children: <Widget>
              [
                Container
                (
                  width: 300.0,
                  height: 300.0,
                  color: Colors.red
                ),
                Positioned
                (
                  top:80.0,
                  left: 80.0,
                  child: Container
                  (
                    width: 250.0,
                    height: 250.0,
                    color: Colors.black
                  ),
                ),
                Positioned
                (
                  top: -20.0,
                  left: -20.0,
                  child: Container
                  (
                    width: 200.0,
                    height: 200.0,
                    //color: Colors.purple,
                    decoration: const BoxDecoration
                    (
                      color: Colors.purple,
                      image: DecorationImage
                      (
                        image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/1/1f/TWICE_LOGO_UNIVERSAL.png'),
                        scale: 1.0
                      )
                    )
                  ),
                )
              ]
            )
          )
        )
      )
    );
  }
  Widget stackSinPos()
  {
    return Center
    (
      child: SizedBox
      (
        width: 300.0,
        height: 300.0,
        child: Center
        (
          child: Stack
          (
            children: <Widget>
            [
              Container
              (
                width: 300.0,
                height: 300.0,
                color: Colors.red,
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.topRight,
                child: const Text('Uno', style: TextStyle(color: Colors.white))
              ),
              Container
              (
                width: 250.0,
                height: 250.0,
                color: Colors.purple,
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: const Text('Dos', style: TextStyle(color: Colors.white))
              ),
              Container
              (
                width: 200.0,
                height: 200.0,
                //color: Colors.purple,
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration
                (
                  color: Colors.pink,
                  image: DecorationImage
                  (
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/1/1f/TWICE_LOGO_UNIVERSAL.png'),
                    scale: 10.0
                  )
                ),
                child: const Text('Tres', style: TextStyle(color: Colors.white))
              )
            ],
          )
        ),
      ),
    );
  }
}