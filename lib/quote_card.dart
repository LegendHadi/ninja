import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote2.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard ({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
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
            SizedBox(height: 10,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 12,),
            ElevatedButton.icon(
              onPressed: () {
                delete.call();
              },
              icon: Icon (Icons.delete),
              label:Text ('delete quote') ,
            ),
          ],
        ),
      ),
    );
  }
}