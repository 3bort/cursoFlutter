import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title: const Text ('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children:  [
          Card(
            child: Column(
              children: const [
                ListTile(
                  leading:  Icon(Icons.photo_album_outlined, color: AppTheme.primary),
                  title: Text('Soy un título'),
                  subtitle: Text('Esto es un texto de relleno para la tarjeta'),
                )
            ]),
          )


        ],

      ),
    );
  }
}
