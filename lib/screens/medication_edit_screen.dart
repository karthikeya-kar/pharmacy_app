// MedicationEditScreen.dart
import 'package:flutter/material.dart';

class MedicationEditScreen extends StatelessWidget {
  final String patientName;

  const MedicationEditScreen({Key? key, required this.patientName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Medication for $patientName'),
      ),
      body: ListView.builder(
        itemCount: 5, // Example number of time slots
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text('Time Slot ${index + 1}'),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    // Navigate to a screen where user can edit medication and time
                  },
                ),
              ),
              const Divider(), // Add a divider between each time slot
            ],
          );
        },
      ),
    );
  }
}
