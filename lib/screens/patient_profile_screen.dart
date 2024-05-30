import 'package:flutter/material.dart';
import 'medication_screen.dart';
import 'patient_details_screen.dart';

class PatientProfileScreen extends StatelessWidget {
  final String patientName;

  const PatientProfileScreen({Key? key, required this.patientName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(patientName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/patient.jpg'), // Path to patient image
                    ),
                    const SizedBox(height: 10),
                    Text(
                      patientName,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              buildInfoRow('Age', '30'),
              buildInfoRow('Gender', 'Male'),
              buildInfoRow('Ward', 'Ward Number: 1'),
              buildInfoRow('Bed Number', '10'),
              buildInfoRow('Diagnosis', 'Condition XYZ'),
              buildInfoRow('Allergies', 'None'),
              buildInfoRow('Doctor', 'Dr. John Doe'),
              const SizedBox(height: 20),
              const Text(
                'Options',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ListTile(
                title: const Text('Patient Info'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PatientDetailsScreen(patientName: patientName),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Medication'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MedicationScreen(patientName: patientName),
                    ),
                  );
                },
              ),
              // Add other options similarly...
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
