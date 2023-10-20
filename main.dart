import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? selectedRiceItem; // Make the type nullable

  List<String> riceItems = [
    'Gutti Vankaya Biryani',
    'Paneer Biryani',
    'Pansakaya Biryani',
    'Vegetable Dum Biryani',
    'Aloo Gobi Dum Biryani',
    'Vegetable Pulao',
    'Peas Pulao',
    'Dum Bagara',
    'Jeera Rice',
    'Mumbai Pulao',
    'White Rice',
    'Pulihora',
    'Avakaya Vadi Pusa Rice',
    'Coconut Rice',
    'Tomato Rice',
    'Curd Rice',
    'Sambar Rice',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start, // Set the column to start at the top
      children: <Widget>[
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a Rice Item:',
          ),
          value: selectedRiceItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedRiceItem = newValue;
            });
          },
          items: riceItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        Text('Selected Rice Item: ${selectedRiceItem ?? "None"}'),
      ],
    );
  }
}
