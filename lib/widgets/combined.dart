import 'package:flutter/material.dart';
import '../widgets/transactionlist.dart';
import '../widgets/newtransaction.dart';
import '../data/transaction.dart';
import 'package:intl/intl.dart';

class Combinded extends StatefulWidget {
  const Combinded({super.key});

  @override
  State<Combinded> createState() => _CombindedState();
}

class _CombindedState extends State<Combinded> {
  final List<Transaction> transaction = [
    Transaction("gfg", 'shirt', 2000.00, DateTime.now()),
    Transaction("idk", 'pant', 5000.00, DateTime.now()),
  ];

  void _adddata( String ? tx, double? v) {
    DateTime d = DateTime.now();

    final dateString = DateFormat('yyyy/mm/dd').format(d);

    var data = Transaction(dateString, tx, v, d);

    setState(() {
      transaction.add(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Mytextlist(_adddata),
      Listdata(transaction),
    ]);
  }
}
