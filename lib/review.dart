import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  String pathImage = "asset/img/nico.jpeg";

  Review(this.pathImage);

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    return Row(
      children: [
      ],
    );
  }
}
