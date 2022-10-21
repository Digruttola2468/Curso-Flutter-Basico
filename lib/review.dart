import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "asset/img/nico.jpeg";
  String userNameString = "Varuna Yasas";
  String detail = "1 review ▒ 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  Review(this.pathImage,this.userNameString,this.detail,this.comment);

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 10
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

    final userName = Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 20
      ),
      child: Text(
        userNameString,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),

      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
          left: 20
      ),
      child: Text(
        detail,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
          left: 20
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start, //Alinea a la izquierda
      children: [
        userName,
        userInfo,
        userComment
      ],
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        photo,
        userDetails
      ],
    );
  }
}
