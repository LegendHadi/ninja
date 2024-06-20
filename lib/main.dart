import 'package:flutter/material.dart';
import 'package:ninja/quotes.dart';

void main() {
  runApp(const MaterialApp(
    home: Quotes(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        elevation: 30,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.brown[300],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('image/picture.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              // endIndent: 30,
              // indent: 50,
              thickness: 1,
              height: 80,
              color: Colors.brown[900],
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 15,
                letterSpacing: 3,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Legend Hadi',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 15,
                letterSpacing: 3,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'hadihosseini81@gmail.com',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '09370988432',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
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
