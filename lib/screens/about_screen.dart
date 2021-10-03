import 'package:flutter/material.dart';
import '../widgets/item_card.dart';

class AboutScreen extends StatelessWidget {
  String _message = 'عن المطور';

  AboutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if (modalRoute != null) {
      Map<String, dynamic> arguments = modalRoute.settings.arguments as Map<String, dynamic>;
      if (arguments.containsKey('message')) {
        _message = arguments['message'];
      }
    }

    return Scaffold(
        appBar: AppBar(
          actionsIconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            _message,
            style: const TextStyle(fontFamily: 'Scheherazade', fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                Colors.blueAccent,
                Colors.blueGrey
              ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/photo.jpeg'),
                  radius: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Mohammed Abu Amira',
                    style: TextStyle(fontFamily: 'Scheherazade', fontWeight: FontWeight.bold),
                  ),
                ),
                Text('Trainee as Flutter Developer \n in eLancer project at UCASTI', style: TextStyle(fontFamily: 'Scheherazade', fontWeight: FontWeight.w500)),
                Divider(
                  color: Colors.white,
                  indent: 20.0,
                  endIndent: 20.0,
                  thickness: 1.5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ItemCard(displayText: 'mohammed.tayser94@gmail.com', displayIcon: Icon(Icons.email)),
                    ItemCard(displayText: '+97059776792', displayIcon: Icon(Icons.mobile_friendly_rounded)),
                    ItemCard(displayText: 'Gaza Strip, Palestine', displayIcon: Icon(Icons.home)),
                  ],
                ),
              ],
            )));
  }
}
