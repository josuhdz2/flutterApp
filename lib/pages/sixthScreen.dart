import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class SixthScreen extends StatefulWidget
{
  SixthScreen({Key? key}) : super(key: key);
  @override
  State<SixthScreen> createState()=>_SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen>
{
  late TextEditingController _controller;
  bool bandera1=true;
  bool bandera2=true;
  bool bandera3=true;
  @override
  void initState()
  {
    super.initState();
    _controller=TextEditingController();
  }
  @override
  void dispose()
  {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: Center
      (
        child: Padding
        (
          padding: const EdgeInsets.all(50.0),
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              TextField
              (
                keyboardType: TextInputType.emailAddress,
                autofocus: true,
                controller: _controller,
                decoration: const InputDecoration
                (
                  labelText: 'Correo',
                  hintText: 'Introduce tu correo',
                  prefixIcon: Icon
                  (
                    Icons.contact_mail
                  )
                ),
                onSubmitted: (String value) async
                {
                  await showDialog<void>
                  (
                    context: context,
                    builder: (BuildContext context)
                    {
                      return AlertDialog
                      (
                        title: Text('Prueba de dialogo'),
                        content: Text('Ha escrito "$value" de longitud ${value.length}'),
                        actions: <Widget>
                        [
                          TextButton
                          (
                            onPressed: ()=> Navigator.pop(context),
                            child: Text('OK')
                          )
                        ],
                      );
                    }
                  );
                },
              ),
              SizedBox
              (
                height: 20.0
              ),
              TextField
              (
                obscureText: true,
                decoration: const InputDecoration
                (
                  prefixIcon: Icon
                  (
                    Icons.lock
                  ),
                  labelText: 'Password'
                )
              ),
              SizedBox
              (
                height: 20.0
              ),
              TextField
              (
                keyboardType: TextInputType.number,
                inputFormatters:
                [
                  FilteringTextInputFormatter.allow
                  (
                    RegExp('[0-9 -]')
                  ),
                  LengthLimitingTextInputFormatter(19)
                ],
                decoration: const InputDecoration
                (
                  prefixIcon: Icon
                  (
                    Icons.credit_card
                  ),
                  labelText: 'Password',
                  hintText: '4152-1234-2735-2637'
                )
              ),
              SizedBox
              (
                height:30.0,
              ),
              Text('Selecciona opcion1'),
              Checkbox
              (
                value: bandera1,
                onChanged: (bool? value)
                {
                  setState(()
                  {
                    bandera1=value!;
                  });
                },
              ),
              Text('Selecciona opcion2'),
              Checkbox
              (
                value: bandera2,
                onChanged: (bool? value)
                {
                  setState(()
                  {
                    bandera2=value!;
                  });
                },
              ),
              Text('Selecciona opcion3'),
              Checkbox
              (
                value: bandera3,
                onChanged: (bool? value)
                {
                  setState(()
                  {
                    bandera3=value!;
                  });
                },
              ),
              ElevatedButton
              (
                child: Text("Regresar"),
                onPressed:()
                {
                  Navigator.pop(context);
                }
              )
            ]
          ),
        )
      ),
    );
  }
}