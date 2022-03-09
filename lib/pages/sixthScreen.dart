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
        child: Form
        (
          //padding: const EdgeInsets.all(50.0),
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              Container
              (
                padding: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                margin: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all
                  (
                    color: Colors.grey
                  )
                ),
                child: TextFormField
                (
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  controller: _controller,
                  decoration: const InputDecoration
                  (
                    border: InputBorder.none,
                    labelText: 'Correo',
                    hintText: 'Introduce tu correo',
                    prefixIcon: Icon
                    (
                      Icons.contact_mail
                    )
                  )
                  /*onSubmitted: (String value) async
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
                  },*/
                ),
              ),
              const SizedBox
              (
                height: 20.0
              ),
              Container
              (
                padding: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                margin: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all
                  (
                    color: Colors.grey
                  )
                ),
                child: const TextField
                (
                  obscureText: true,
                  decoration: InputDecoration
                  (
                    prefixIcon: Icon
                    (
                      Icons.lock
                    ),
                    labelText: 'Password'
                  )
                ),
              ),
              const SizedBox
              (
                height: 20.0
              ),
              Container
              (
                padding: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                margin: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all
                  (
                    color: Colors.grey
                  )
                ),
                child: TextField
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
              ),
              const SizedBox
              (
                height:30.0,
              ),
              Container
              (
                padding: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                margin: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                child: CheckboxListTile
                (
                  title: const Text('Selecciona opcion 1'),
                  value: bandera1,
                  onChanged: (bool? value)
                  {
                    setState(()
                    {
                      bandera1=value!;
                    });
                  },
                ),
              ),
              Container
              (
                padding: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                margin: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                child: CheckboxListTile
                (
                  title: const Text('Selecciona opcion 2'),
                  value: bandera2,
                  onChanged: (bool? value)
                  {
                    setState(()
                    {
                      bandera2=value!;
                    });
                  },
                ),
              ),
              Container
              (
                padding: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                margin: const EdgeInsets.symmetric
                (
                  horizontal: 20.0
                ),
                child: CheckboxListTile
                (
                  title: const Text('Selecciona opcion 3'),
                  value: bandera3,
                  onChanged: (bool? value)
                  {
                    setState(()
                    {
                      bandera3=value!;
                    });
                  },
                ),
              ),
              ElevatedButton
              (
                child: const Text("Regresar"),
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