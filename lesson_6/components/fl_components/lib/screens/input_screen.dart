import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: const [
                  CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario'),
                  SizedBox(height:30),
                  CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario'),
                  SizedBox(height:30),
                  CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario'),
                  SizedBox(height:30),
                ],
              )),
        ));
  }
}


