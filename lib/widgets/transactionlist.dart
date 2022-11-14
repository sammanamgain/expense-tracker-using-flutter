import 'package:flutter/material.dart';
import '../data/transaction.dart';
import 'package:intl/intl.dart';

class Listdata extends StatelessWidget {
  final DateTime d = DateTime.now();
  final List<Transaction> transaction;

  Listdata(this.transaction);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        
          itemBuilder: (context, item) {
            final dateString = DateFormat('yyyy/mm/dd')
                .format(transaction[item].date as DateTime);

            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                    margin: const EdgeInsets.only(left: 15),
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      '\$${transaction[item].price}',
                      style: const TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    //remember container only  takes one child whereas row and column takes multiple
                    margin: const EdgeInsets.only(left: 55),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(border: Border.all(width: 2)),
                    child: Column(children: <Widget>[
                      Text(
                        transaction[item].name.toString(),
                        style: const TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        dateString,
                        style: const TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      )
                    ]),
                  )
                ],
              ),
            );
          },
          itemCount: transaction.length),
    );
  }
}
