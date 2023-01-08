import 'package:flutter/material.dart';

import './Widgets/new_transaction.dart';
import './Widgets/transaction_list.dart';
import './Widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // String inputTitle;
  // String inputAmount;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pudget'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Color.fromARGB(171, 194, 33, 243),
                child: Text("CHART!"),
                elevation: 5,
              ),
            ),
            UserTransactions()
          ],
        ),
      ),
    );
  }
}
