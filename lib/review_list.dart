import 'package:cursoflutterbasico/review.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Review("assets/img/nico.jpeg", "Volumen", "1 view ▒ 1 photo", "Una verga , roban comida de mi mochila XD"),
        Review("assets/img/lemo.jpeg", "NazaLove", "3 view ▒ 2 photo", "Sin comentarios"),
        Review("assets/img/ledesmas.jpeg", "Gordo", "5 view ▒ 9 photo", "Sin comentario"),
        Review("assets/img/duky.jpeg", "Jesus", "3 view ▒ 5 photo", "jajaja pelotudito"),
        Review("assets/img/franca.jpeg", "Lobo", "10 view ▒ 3 photo", "Es hermoso, lastima que no pase de año"),
      ],
    );
  }
}
