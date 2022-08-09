import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CastingCards extends StatelessWidget {
  const CastingCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 180,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: ( _ , int index) => _CastCard() ,
          ),
    );
  }
}

class _CastCard extends StatelessWidget {
  const _CastCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              image: AssetImage('assets/no-image.jpg'),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
              placeholder: AssetImage('assets/no-image.jpg'),),
          ),


        const SizedBox(height: 5),

          const Text('actor.name', maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
