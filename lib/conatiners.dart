import 'package:flutter/material.dart';

class Conatiners extends StatelessWidget {
  final String child;
  final String imageUrl;
  const Conatiners({Key? key, required this.child, required this.imageUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 200,
          child: Center(
            child: Text(
              child,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Pacifico',
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 1, color: Colors.white30),
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
          )),
    );
  }
}
