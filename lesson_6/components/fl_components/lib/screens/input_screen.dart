import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Uso de keys para mantener la referencia, usado en este caso para el Form

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Emilio',
      'last_name': 'Bort',
      'email': 'emilio@bort.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    const CustomInputField(
                        labelText: 'Nombre', hintText: 'Nombre del usuario'),
                    const SizedBox(height: 30),
                    const CustomInputField(
                        labelText: 'Apellido',
                        hintText: 'Apellido del usuario'),
                    const SizedBox(height: 30),
                    const CustomInputField(
                        labelText: 'Correo',
                        hintText: 'Correo del usuario',
                        keyboardType: TextInputType.emailAddress),
                    const SizedBox(height: 30),
                    const CustomInputField(
                        labelText: 'Contraseña',
                        hintText: 'Contraseña del usuario',
                        obscureText: true),
                    const SizedBox(height: 30),
                    ElevatedButton(
                        child: const SizedBox(
                            width: double.infinity,
                            child: Center(child: Text('Guardar'))),
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode()); //Código para esconder el teclado quitando el focus
                          if (!myFormKey.currentState!.validate()) {
                            print('Formulario no válido');
                            return;
                          }
                          print(formValues);
                        })
                  ],
                ),
              )),
        ));
  }
}
