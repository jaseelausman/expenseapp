// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
 
 
class NewTransaction extends StatefulWidget {
 
final Function addTnx;
 
   NewTransaction(this.addTnx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
final titlecontroller=TextEditingController();

final amountcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return  Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: 
                  [
                    
                    Card(child: TextField(decoration:InputDecoration(labelText:"Title" ) ,controller: titlecontroller,)),
                    Card(child: TextField(decoration: InputDecoration(labelText: "Amount"),controller: amountcontroller,keyboardType: TextInputType.number,)),
                    ElevatedButton(onPressed: (){widget.addTnx(titlecontroller.text,double.parse(amountcontroller.text));} ,child: Text("Add Transaction")),
              
                  ]
                )
               
    );
     
    
}}