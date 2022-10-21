import 'package:flutter/material.dart';

class DescripcionPlace extends StatelessWidget {

  String namePlace ;
  String descriptionString;
  int starts = 1;

  DescripcionPlace(this.namePlace,this.starts,this.descriptionString, {super.key} );

  @override
  Widget build(BuildContext context) {

    final start_half = Container(
      margin: const EdgeInsets.only(
        top: 353.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFF2C611)
      ),
    );

    final star_border = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
          Icons.star_border,
          color: Color(0xFFF2C611)
      ),
    );

    final start = Container(
      margin: const EdgeInsets.only(
        top: 253.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final title_stars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 250.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
          textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            start,start,start,start,start
          ],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20
      ),
      child: Text(
        descriptionString,
        style: const TextStyle(
            fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );

    return Column(
      children: [
        title_stars,
        description
      ],
    );
  }
}
