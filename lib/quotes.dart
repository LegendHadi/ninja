import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  // List quotes = [
  //   'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  //   'Ut enim ad minim veniam, quis nostrud exercitation',
  //   'ullamco laboris nisi ut aliquip ex ea ',
  // ];

  // Widget quoteTemplate (quote){
  //   return QuoteCard(quote:quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.edit),
        actions: [
          if (quotes.isNotEmpty)
            IconButton(
              onPressed: () {
                setState(() {
                  // numbers.clear();
                  quotes.clear();
                });
              },
              icon: Icon(Icons.delete),
            ),
        ],
        title: Text('Quotes List'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            quotes.add(Quote(author: 'Mohammad Hadi', text: 'Hosseini'));
          });
        },
        child: Icon(Icons.add),
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
        // quotes.map((quote) => QuoteCard(quote:quote)).toList(),
        // quotes.map((quote) => quoteTemplate(quote)).toList(),
        // quotes.map((quote) => Text(quote.text +' - '+ quote.author)).toList(),
      ),

      // body: ListView.builder(
      //   itemCount: numbers.length,
      //   itemBuilder: (context, index) => Padding(
      //     padding: EdgeInsets.only(
      //       bottom: index==(numbers.length - 1) ? 0 :30,
      //     ),
      //     child: Text(numbers[index].toString()),
      //   ),
      // )

      // body: ListView.separated(
      //   itemBuilder: (_, index) {
      //     return Container(
      //       height: 60,
      //       color: Colors.grey[300],
      //       alignment: Alignment.center,
      //       child: Text(
      //         numbers[index].toString(),
      //         style: TextStyle(fontSize: 20),
      //       ),
      //     );
      //   } ,
      //   separatorBuilder: (_, index) => const SizedBox(height: 10,),
      //   itemCount: numbers.length,
      // ),

      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   children:
      //     numbers.map((num) {
      //       return Row(
      //         children: [
      //           Text('$num'),
      //           SizedBox(width: 10,),
      //         ],
      //       );
      //     }).toList(),
      // ),

      // body: ListView(
      //   children:
      //     numbers.map((num) {
      //       return Column(
      //         children: [
      //           Text('$num'),
      //           SizedBox(
      //             height: 10,
      //           ),
      //         ],
      //       );
      //     }).toList(),
      // ),

      // body: ListView(
      //   children:
      //     numbers.map((num) => Column(
      //       children: [
      //         Text('$num'),
      //         SizedBox(
      //           height: 10,
      //         )
      //       ],
      //     )).toList(),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       // numbers.add(numbers.length);
      //       numbers.add(numbers.length +1);
      //     });
      //   },
      //   child: Icon(Icons.add),
      // ),

      // body: ListView(
      //   children:
      //     // quotes.map((quote) => Text(quote)).toList(),
      //     numbers.map((num) => Text(num.toString())).toList(),
      // ),

      // body: ListView(
      //   children: [
      //     // ...quotes.map((quote) => Text(quote)),
      //     ...numbers.map((num) => Text(num.toString())),
      //   ],
      // ),

      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Text('${quotes[0]}',
      //       textAlign: TextAlign.center,
      //     ),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     Text('${quotes[1]}'),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     Text('${quotes[2]}'),
      //     SizedBox(
      //       height: 10,
      //     ),
      //   ],
      // ),
    );
  }
}
