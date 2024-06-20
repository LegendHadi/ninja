import 'package:flutter/material.dart';
import 'quote2.dart';
import 'quote_card.dart';

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List quotes = [
    Quote(
        author: 'oscar wild',
        text: 'sed do eiusmod tempor incididunt ut labore et '),
    Quote(
        author: 'oscar wild',
        text: 'Ut enim ad minim veniam, nostrud exercitation'),
    Quote(author: 'oscar wild', text: 'this is the quote text'),
  ];
  List<int> numbers = List.generate(100, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.edit),
        actions: [
          if (quotes.isNotEmpty)
            IconButton(
              onPressed: () {
                setState(() {
                  quotes.clear();
                });
              },
              icon: const Icon(Icons.delete),
            ),
        ],
        title: const Text('Quotes List'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            quotes.add(Quote(author: 'Mohammad Hadi', text: 'Hosseini'));
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          ...quotes.map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                },
              )),
        ],
      ),
    );
  }
}
