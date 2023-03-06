// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';
import './user_transaction.dart';




class TransactionList extends StatelessWidget {
  final List<Transaction>_transactions;
  TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {
    return  Column(children: 
                
                _transactions.map((tnx){
                 //return Card(child: Text(tnx.title),);
                 return ListTile(title:Text
                 (tnx.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    ),
                  ),
                 subtitle:Text(DateFormat('yyyy/mm/d').format(tnx.date) ),
                 leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
                  child: Text('\$ ${tnx.amount}',
                  //child: Text(tnx.amount.toString(),
                  style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                    fontSize: 20))
                   )
                    );
                }).toList(), 
    );
  }
}