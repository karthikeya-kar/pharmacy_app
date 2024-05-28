import 'package:flutter/material.dart';

class PatientListScreen extends StatefulWidget {
  const PatientListScreen({Key? key}) : super(key: key);

  @override
  _PatientListScreenState createState() => _PatientListScreenState();
}

class _PatientListScreenState extends State<PatientListScreen> {
  String selectedWard = 'Ward Number: 1';

  List<String> wards = [
    'Ward Number: 1',
    'Ward Number: 2',
    'Ward Number: 3',
    'Ward Number: 4',
    'Ward Number: 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(200, 230, 255, 1), // Light blue background
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(200, 230, 255, 1),
              Color.fromRGBO(220, 240, 255, 1),
            ],
            stops: [0.0, 1.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 40), // Add some space at the top
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton<String>(
                      value: selectedWard,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.transparent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedWard = newValue!;
                        });
                      },
                      items: wards.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    IconButton(
                      icon: const Icon(Icons.menu, color: Colors.black), // Change icon color to black
                      onPressed: () {
                        // Handle menu button press here
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Patients',
                    filled: true,
                    fillColor: Colors.grey[200], // Change fill color to light grey
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: const Icon(Icons.search, color: Colors.black), // Change prefix icon color to black
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10, // Replace with the actual number of patients
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.grey[200], // Change card color to light grey
                        child: ListTile(
                          title: Text('Patient ${index + 1}', style: const TextStyle(color: Colors.black)),
                          subtitle: const Text('Patient details here', style: TextStyle(color: Colors.black54)),
                          onTap: () {
                            // Handle patient selection here
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
