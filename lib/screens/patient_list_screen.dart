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

  List<String> patients = [
    'Patient 1',
    'Patient 2',
    'Patient 3',
    'Patient 4',
    'Patient 5',
    'Patient 6',
    'Patient 7',
    'Patient 8',
    'Patient 9',
    'Patient 10',
  ];

  // Function to add a patient to the list
  void _addPatient(String patientName) {
    setState(() {
      patients.add(patientName);
    });
  }

  // Function to show a dialog for confirming patient deletion
  void _showDeleteConfirmationDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Patient'),
          content: const Text('Are you sure you want to delete this patient?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Delete'),
              onPressed: () {
                _deletePatient(index); // Confirm deletion
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // Function to delete a patient from the list
  void _deletePatient(int index) {
    setState(() {
      patients.removeAt(index);
    });
  }

  // Function to show a dialog for adding a new patient
  void _showAddPatientDialog() {
    String newPatientName = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add New Patient'),
          content: TextField(
            onChanged: (value) {
              newPatientName = value;
            },
            decoration: const InputDecoration(hintText: "Enter patient name"),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                if (newPatientName.isNotEmpty) {
                  _addPatient(newPatientName); // Adding new patient to the list
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _showAddPatientDialog, // Show dialog to add a new patient
          ),
        ],
      ),
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
                    itemCount: patients.length, // Updated to use the patients list
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.grey[200], // Change card color to light grey
                        child: ListTile(
                          title: Text(patients[index], style: const TextStyle(color: Colors.black)),
                          subtitle: const Text('Patient details here', style: TextStyle(color: Colors.black54)),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete, color: Color.fromARGB(255, 71, 95, 124)),
                            onPressed: () {
                              _showDeleteConfirmationDialog(index); // Show delete confirmation dialog
                            },
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/patient_profile',
                              arguments: patients[index],
                            );
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
