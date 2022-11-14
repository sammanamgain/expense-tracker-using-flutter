import 'package:flutter/material.dart';
//import './transactionlist.dart';
//import './combined.dart';

class Mytextlist extends StatelessWidget {
  final Function _adddata;
  Mytextlist(this._adddata);
  // final titleController = TextEditingController();
  // final valueController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.black,
        )),
        child: Column(
          children: [
            Card(
                child: Column(children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  labelText: "title",
                ),
                controller: titleController,
                keyboardType: TextInputType.text,
              ),
            ])),
            Card(
                child: Column(children: <Widget>[
              TextField(
                decoration: const InputDecoration(labelText: "expenses"),
                controller: valueController,
                keyboardType: TextInputType.number,
              ),
            ])),
            ElevatedButton(
                onPressed: () {
                  //here we need to call the function for building the widget  not he passing , so use this type of syntax
                  _adddata(
                      titleController.text,
                      double.tryParse(
                        (valueController.text),
                      ));
                },
                child: const Text("ADD Transaction")),
          ],
        ));
  }
}
