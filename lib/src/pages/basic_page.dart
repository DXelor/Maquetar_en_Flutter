import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 17.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(
            image: NetworkImage(
                'https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg')),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('PurpurinaStars', style: estiloTitulo),
                    SizedBox(height: 6.5),
                    Text('atardecer con cielo purpura', style: estiloSubTitulo),
                  ],
                ),
              ),
              Icon(Icons.star, color: Colors.amber, size: 25.0),
              Text(
                '41',
                style: TextStyle(fontSize: 18.0),
              )
            ],
          ),
        )
      ],
    ));
  }
}
