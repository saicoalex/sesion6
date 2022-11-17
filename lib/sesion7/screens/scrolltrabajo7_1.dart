import 'package:flutter/material.dart';
import 'package:sesion6/sesion7/widgets/screentrabajo7_1.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class ScrollScreen7_1sesion extends StatefulWidget {
  const ScrollScreen7_1sesion({super.key});
//ScrollScreen7
  @override
  State<ScrollScreen7_1sesion> createState() => _ScrollScreen7_1sesionState();
}

class _ScrollScreen7_1sesionState extends State<ScrollScreen7_1sesion> {
  late Controller controller;

  final List<dynamic> data = [
    {
      'img':
          'https://cdn.pixabay.com/photo/2016/12/19/08/39/mobile-phone-1917737__340.jpg',
      'title': 'Facebook (Red social)',
      'subtitle': 'Qué es Facebook?',
      'content':
          'Facebook es una red social que fue creada para poder mantener en contacto a personas, y que éstos pudieran compartir información, noticias y contenidos audiovisuales con sus propios amigos y familiares.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2015/12/05/00/30/twitter-1077697_960_720.jpg',
      'title': 'Twitter  (Red social)',
      'subtitle': 'Qué es Twitter?',
      'content':
          'Esta plataforma social, es un servicio de comunicación bidireccional con el que puedes compartir información de diverso tipo de una forma rápida, sencilla y gratuita.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2021/04/08/01/50/telegram-6160479__340.png',
      'title': 'Telegram (Red social)',
      'subtitle': 'Qué es Telegram?',
      'content':
          'Telegram es una aplicación de mensajería enfocada en la velocidad y seguridad, es súper rápida, simple y gratuita.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2015/08/28/11/30/linkedin-911794__340.jpg',
      'title': 'Linkedln (Red social)',
      'subtitle': 'Qué es Linkedln?',
      'content':
          'Esta red cuenta con una gran comunidad social, muy útil para las empresas, negocios que buscan nuevo talento humano, y por supuesto, para las personas que se encuentran en búsqueda de un empleo'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2015/08/03/13/58/whatsapp-873316_960_720.png',
      'title': 'Whatsapp (Red social)',
      'subtitle': 'Qué es  whatsapp?',
      'content':
          'Sirve para enviar mensajes de texto y multimedia entre sus usuarios. Su funcionamiento es similar a los programas de mensajería instantánea para ordenador más comunes, aunque enfocado y adaptado al móvil.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2015/04/13/17/45/icon-720934_960_720.png',
      'title': 'Youtube (Sitio Web)',
      'subtitle': 'Que es Youtube?',
      'content':
          'A diferencia de otros sitios web similares, Youtube tiene un amplio número de participantes y una cantidad muy extensa de información y visitas diarias. '
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2016/11/18/11/16/instagram-1834010_960_720.png',
      'title': 'Instagram (Res Social)',
      'subtitle': 'Que es Instagram?',
      'content':
          'nstagram es una red social y una aplicación móvil al mismo tiempo, que permite a sus usuarios subir imágenes y vídeos con múltiples efectos fotográficos como filtros, marcos, colores retro, etc., para posteriormente compartir esas imágenes en la misma plataforma o en otras redes sociale'
    }
  ];

  Controller? testingController;

  @override
  void initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }

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
      body: TikTokStyleFullPageScroller(
        contentSize: data.length,
        swipePositionThreshold: 0.2,
        swipeVelocityThreshold: 2000,
        animationDuration: const Duration(milliseconds: 400),
        controller: controller,
        builder: (BuildContext context, int index) {
          final dato = data[index];
          return PlatillaScreen7_1screen(
            img: dato['img'],
            title: dato['title'],
            subtitle: dato['subtitle'],
            content: dato['content'],
          );
        },
      ),
    );
  }
}
