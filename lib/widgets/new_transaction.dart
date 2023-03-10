// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

 import 'package:intl/intl.dart';
 
class NewTransaction extends StatefulWidget {
 
final Function addTnx;
 
   NewTransaction(this.addTnx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
final titlecontroller=TextEditingController();
DateTime? _selectedDate ;

final amountcontroller=TextEditingController();

void _presentDatePicker(){
  showDatePicker(context: context, 
  initialDate: DateTime.now(), 
  firstDate: DateTime(2020), 
  lastDate: DateTime.now()).
  then((pickedDate){
    if (pickedDate== null){
      return ;
    }
    setState(() {
      _selectedDate=pickedDate;
    
    });
    
    });
}

  @override
  Widget build(BuildContext context) {
    
    return  Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: 
                  [
                    
                    Card(child: TextField(decoration:InputDecoration(labelText:"Title" ) ,controller: titlecontroller,)),
                    Card(child: TextField(decoration: InputDecoration(labelText: "Amount"),controller: amountcontroller,keyboardType: TextInputType.number,)),
                    Row(children: [
                      Text(_selectedDate == null ?"no date chosen":DateFormat.yMd().format(_selectedDate!)),
                      SizedBox(width: 20,),
                      ElevatedButton(
                        onPressed: _presentDatePicker,
                         child: Text("Choose a date"),
                         style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent ))
                    ]),
                    ElevatedButton(onPressed: (){widget.addTnx(titlecontroller.text,
                    double.parse(amountcontroller.text),
                    _selectedDate) ;}
                  
                    ,child: Text("Add Transaction")),
              
                  ]
                )
               
    );
     
    
}}