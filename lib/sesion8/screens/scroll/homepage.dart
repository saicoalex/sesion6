import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2021/12/17/10/09/night-6876155_960_720.jpg',
        'username': 'Prueba 1',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2020/01/31/07/10/city-4807268__340.jpg',
        'username': 'Prueba 2',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2022/08/22/05/01/hill-7402780_640.png',
        'username': 'Prueba 3',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2019/10/09/03/18/deer-4536354_960_720.jpg',
        'username': 'Prueba 4',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2021/02/27/22/19/plant-6055943_960_720.jpg',
        'username': 'Prueba 5',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2014/04/10/11/24/rose-320868_960_720.jpg',
        'username': 'Prueba 6',
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              itemCount: data.length,
              // scrollDirection: Axis.horizontal,
              scrollDirection: Axis.vertical,
              controller: controller,
              itemBuilder: (context, index) {
                final datos = data[index];

                return TiktokWidget(
                  img: datos['img'],
                  username: datos['usarname'],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.tv),
                ),
                SizedBox(
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text('siguiendo'), Text('Para ti')],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TiktokWidget extends StatelessWidget {
  final String? img;
  final String? username;

  const TiktokWidget({super.key, this.img, this.username});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          '$img',
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '$username',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Icon(
                        Icons.verified,
                        color: Colors.lightBlue,
                      ),
                    ],
                  ),
                  const Text('#Hola #mundo #Flutter')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                //mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.end,
                //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //      mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                          //  child: Image.network('$img'),
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2018/08/26/06/29/smiley-3631558__340.png')),
                      Column(
                        children: const [
                          Icon(Icons.favorite),
                          Text('24'),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.comment),
                          Text('24'),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.bookmark),
                          Text('24'),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.share),
                          Text('24'),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
