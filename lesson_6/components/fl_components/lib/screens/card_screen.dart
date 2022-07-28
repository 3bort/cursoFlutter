
import 'package:fl_components/widgets/widgets.dart';
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
        children:  const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2( imageUrl: 'https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',),
          SizedBox(height: 20),
          CustomCardType2(name: 'Un bonito paisaje', imageUrl: 'https://img.freepik.com/free-vector/peaceful-hill-forest-tree-mountains-rock-beautiful-landscape-outdoors-adventure-green-silhouette-illustration_1150-39395.jpg?w=2000',),
          SizedBox(height: 100),
          
        ],

      ),
    );
  }
}


