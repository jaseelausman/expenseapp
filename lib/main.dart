
import 'package:flutter/material.dart';

import './widgets/user_transaction.dart';



void main() {
  runApp( MaterialApp(
    home:MyHomepage(),
  ));
}

class MyHomepage extends StatelessWidget 
{
 

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(title: const Text("Expense tracker",
      style:  TextStyle(color: Colors.black),),backgroundColor: Colors.green,),
      body:Column(
        children: [
          Container
          (
              width:5,
              height:2,
              child: const Card(child: Center(child: Text("CHART")),
              ),
          ),
             UserTransactions () 
        ],
      ),
    );
      
      
          
          
     
    
  }
}