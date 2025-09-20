import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/meals.dart';

class MealsScreen extends StatelessWidget{
  MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals; 

  

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
        itemBuilder: (ctx,index) => Text(meals[index].title),
      );

      if (meals.isEmpty){
        Widget content = Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Uh Sorry! .. It seems that there are no meals here"),
              SizedBox(height: 12),
              Text("Search for other meals in other tabs")
          ],));
      }
    

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content
    );
  }
}