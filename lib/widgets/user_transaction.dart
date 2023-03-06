import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transactions_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> 
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
   );

   }

  @override
  Widget build(BuildContext context) 
  {
    return  Column
    (children:
    [ NewTransaction(_addNewtransaction) ,
      TransactionList(_userTransactions),
    ],
    );

}
}