import 'package:flutter/material.dart';

import 'medication_edit_screen.dart';

class MedicationScreen extends StatelessWidget {
  final String patientName;

  const MedicationScreen({Key? key, required this.patientName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> medicationSchedule = [
      {'time': '08:00 AM', 'medication': 'Medication A'},
      {'time': '12:00 PM', 'medication': 'Medication B'},
      {'time': '04:00 PM', 'medication': 'Medication C'},
      {'time': '08:00 PM', 'medication': 'Medication D'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('$patientName - Medication'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MedicationEditScreen(patientName: patientName),
                )
              // Navigate to edit medication screen
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Medication Schedule',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: medicationSchedule.length,
                itemBuilder: (context, index) {
                  final medication = medicationSchedule[index];
                  return Card(
                    child: ListTile(
                      title: Text(
                        medication['time']!,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        medication['medication']!,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
