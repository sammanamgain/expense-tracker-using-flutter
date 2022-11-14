import 'package:flutter/material.dart';
import '../widgets/combined.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Expense tracker"),
          actions: const <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: null,
            ),
          ],
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(15),
                child: Card(
                  elevation: 100,
                  child: Container(
                    height: 20,
                    width: double.infinity,
                    color: const Color.fromARGB(134, 214, 32, 71),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 3, left: 15),
                      child: Text("chart "),
                    ),
                  ),
                ),
              ),
              const SingleChildScrollView(
                child: Combinded(),
              )
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
