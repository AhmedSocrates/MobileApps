import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget{
  const NewExpense({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewExpenseState();
  }
}

 
class _NewExpenseState extends State<NewExpense>{
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  void _presentDatePicker(){
    showDatePicker(context: context, firstDate: firstDate, lastDate: lastDate)
  }

  @override
  void dispose() {
    _titleController.dispose(); 
    _amountController.dispose();       
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16),
    child: Column(
      children: [
        TextField(
          controller: _titleController,
          maxLength: 50,
          decoration: InputDecoration(
            label: Text('Title')
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixText: '\$  ',
                  label: Text('Amount')
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  const Text('Selected Date'),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(
                      Icons.calendar_month
                    ))
                
              ],),
            )


          ],
        ),
        Row(
          children: [
            TextButton(
              onPressed: (){
                Navigator.pop(context); 
              },
              child: Text('Cancel')
            ),
            ElevatedButton(onPressed: (){},
            child: const Text('Save Expense'),
            )
          ],
        )
      ],
      )
    );
    
  }
}