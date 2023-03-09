
import 'package:flutter/material.dart';
import './widgets/new_transaction.dart';
import './models/transaction.dart';
import './widgets/transactions_list.dart';



void main() {
  runApp( MaterialApp(
    home:MyHomepage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class MyHomepage extends StatefulWidget 
{
 
  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage>
 {

  final List<Transaction> _userTransactions=[
    Transaction(id:'t1', title: 'Shoes', amount:6999,date:DateTime.now()),
    Transaction(id:'t2', title: 'Dress', amount:2000,date:DateTime.now()),
  ];
   void _addNewtransaction( String txtitle, double txamount)
   {
       final newTx =Transaction
       (
          title:txtitle,
          amount:txamount,
          date:DateTime.now(),
          id:DateTime.now().toString(),

       );
   
   setState((){
    _userTransactions.add(newTx);
   }
   );}

 void _startAddNewTransaction(BuildContext cntx){
  showModalBottomSheet(context: cntx, builder: (_){
    return NewTransaction(_addNewtransaction);
  },);
 
 }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title: const Text("Expense tracker",
      style:  TextStyle(color: Colors.white),),
      actions: [IconButton(icon:Icon(Icons.add),onPressed: ()=> _startAddNewTransaction(context),)],),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container
            (
                width:100,
                height:28,
                child: const Card(child: Center(child: Text("CHART")),
                ),
            ),
              TransactionList(_userTransactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: ()=> _startAddNewTransaction(context),),
    );
      
      
          
          
     
    
  }
}