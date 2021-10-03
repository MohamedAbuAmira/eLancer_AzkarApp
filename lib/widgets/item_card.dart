import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String? displayText;
  final Icon? displayIcon;

  ItemCard({Key? key, this.displayText, this.displayIcon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.black,
      margin: EdgeInsets.all(25),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: BorderSide(color: Colors.orangeAccent, width: 0.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            displayIcon!,
            Text(displayText!, style: TextStyle(fontFamily: 'Scheherazade', fontWeight: FontWeight.w500)),
            IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
