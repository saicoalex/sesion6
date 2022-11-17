import 'package:flutter/material.dart';

class Sesion7 extends StatelessWidget {
  const Sesion7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 5, 5),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 5, 5),
        title: const Text(
          'Sesion 7',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Image.network(
                fit: BoxFit.fill,
                'https://cdn.pixabay.com/photo/2022/11/04/05/50/city-7569067__340.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'titulo Principal',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        'Subtituulo principal',
                        style: TextStyle(color: Colors.white),
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
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              child: Text(
                textAlign: TextAlign.justify,
                'Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
