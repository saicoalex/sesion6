import 'package:flutter/material.dart';

class PlatillaScreen extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final String? content;

  const PlatillaScreen(
      {super.key, this.img, this.title, this.subtitle, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 220,
          child: Image.network(fit: BoxFit.fill, '$img'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      '$subtitle',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.star,
                color: Color.fromARGB(255, 250, 2, 2),
              ),
              const Text('41', style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Column(
                  children: const [
                    Icon(
                      Icons.call,
                      color: Colors.lightBlue,
                    ),
                    Text(
                      'call',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Column(
                  children: const [
                    Icon(
                      Icons.add_location,
                      color: Colors.lightBlue,
                    ),
                    Text(
                      'location',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Column(
                  children: const [
                    Icon(
                      Icons.share,
                      color: Colors.lightBlue,
                    ),
                    Text(
                      'share',
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            child: Text(
              textAlign: TextAlign.justify,
              '$content',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
