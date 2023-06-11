import 'package:flutter/material.dart';
import 'package:flutter_application_3/provider/food_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController foodController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var foodProvider = Provider.of<FoodProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of foods'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
          itemCount: foodProvider.foods.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                foodProvider.foods[index],
                style: const TextStyle(fontSize: 15),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: TextField(
                    controller: foodController,
                    decoration: InputDecoration(label: Text('Enter a food')),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        foodProvider.addtofood(foodController.text);
                        foodController.clear();
                        Navigator.pop(context);
                      },
                      child: const Text('Add'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    )
                  ],
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
