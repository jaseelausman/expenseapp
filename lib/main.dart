import 'package:expenseplanner/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp( MaterialApp(
    home:MyHomepage(),
  ));
}

class MyHomepage extends StatelessWidget {
  final List<Transaction>transactions=[
    Transaction(id:'t1', title: 'Shoes', amount:6999,date:DateTime.now()),
    Transaction(id:'t2', title: 'Dress', amount:2000,date:DateTime.now()),
    
    
  ];
final titlecontroller=TextEditingController();
final amountcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expense tracker",
      style:  TextStyle(color: Colors.black),),backgroundColor: Colors.green,),
      body:Column(
        children: [
          Container(
              width:60,
              height:20,
              child: const Card(child: Center(child: Text("CHART")),elevation:10 )),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  
                  children: [
                    // ignore: prefer_const_constructors
                    Card(child: TextField(decoration:InputDecoration(labelText:"Title" ) ,controller: titlecontroller,)),
                    Card(child: TextField(decoration: InputDecoration(labelText: "Amount"),controller: amountcontroller,)),
                    ElevatedButton(onPressed: (){print(titlecontroller.text);}, child: Text("Add Transaction")),
                  ],
                ),
              ),
              Column(children: 
                transactions.map((tnx){
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
                ),
               
                
              ],
      ),
      );
          
          
     
    
  }
}