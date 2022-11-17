import 'package:flutter/material.dart';
import 'package:sesion6/menu.dart';

class PlatillaScreen7_1screen extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final String? content;

  const PlatillaScreen7_1screen(
      {super.key, this.img, this.title, this.subtitle, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 280,
          height: 280,
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
                    Center(
                      child: Text(
                        '$title',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '$subtitle',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              //    const Icon(
              //      Icons.star,
              //      color: Color.fromARGB(255, 250, 2, 2),
              //    ),
              //   const Text('41', style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        /*
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
        */
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: SizedBox(
            child: Text(
              textAlign: TextAlign.center,
              '$content',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            minWidth: 200.0,
            height: 40.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Menu(),
                ),
              );
            },
            color: const Color.fromARGB(255, 244, 140, 3),
            child: const Text('Regresar al menu',
                style: TextStyle(color: Colors.white)),
          ),
        ),

        /*
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

          WidgetButon(
          text: 'Sesion 7.1 ',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScrollScreen7_1sesion(),
              ),
            );
          },
        ),*/
      ],
    );
  }
}
