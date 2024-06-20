import 'package:flutter/material.dart';
import 'quote2.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    required this.quote,
    required this.delete,
    Key? key,
  }) : super(key: key);
  final Quote quote;
  final Function delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      color: Colors.blue[100],
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton.icon(
              onPressed: () {
                delete.call();
              },
              icon: const Icon(Icons.delete),
              label: const Text('delete quote'),
            ),
          ],
        ),
      ),
    );
  }
}
