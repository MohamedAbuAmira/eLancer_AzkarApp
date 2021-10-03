import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter = 0;
  String _content = 'الحمد لله';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_counter;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.teal.shade300,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actionsIconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'مسبحة الأذكار',
          style: TextStyle(
              fontFamily: 'Scheherazade',
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (_content != value) {
                setState(() {
                  _content = value;
                  _counter = 0;
                });
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text('الحمد لله'),
                  value: 'الحمد لله',
                ),
                const PopupMenuItem(
                  child: Text('سبحان الله'),
                  value: 'سبحان الله',
                ),
                const PopupMenuItem(
                  child: Text('أستغفر الله'),
                  value: 'أستغفر الله',
                ),
                const PopupMenuItem(
                  child: Text('لا إله إلا الله'),
                  value: 'لا إله إلا الله',
                ),
              ];
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about_screen',
                  arguments: {'message': "تطبيق أذكار للتسبيح"});
            },
            icon: const Icon(Icons.info),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 90),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpg'), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/avatar.jpg'),
              radius: 100,
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    color: const Color.fromRGBO(174, 131, 89, 1.0), width: 2.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(5, 0),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'Scheherazade',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                    ),
                  ),
                  DecoratedBox(
                    child: SizedBox(
                      child: Center(
                        child: Text(
                          _counter.toString(),
                          style: const TextStyle(
                              fontFamily: 'Scheherazade',
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      width: 50,
                      height: double.infinity,
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(236, 205, 173, 1.0),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ++_counter;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(108, 40, 35, 1.0),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(10))),
                    ),
                    child: const Text(
                      'تسبيح',
                      style: TextStyle(
                          fontFamily: 'Scheherazade',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _counter = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                              bottomEnd: Radius.circular(10))),
                    ),
                    child: const Text(
                      'إعادة',
                      style: TextStyle(
                          fontFamily: 'Scheherazade',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
