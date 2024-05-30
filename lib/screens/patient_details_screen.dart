import 'package:flutter/material.dart';

class PatientDetailsScreen extends StatelessWidget {
  final String patientName;

  const PatientDetailsScreen({Key? key, required this.patientName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$patientName Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildInfoRow('Name', patientName),
              buildInfoRow('Age', '30'),
              buildInfoRow('Gender', 'Male'),
              buildInfoRow('Admission Date', '2024-01-01'),
              buildInfoRow('Contact Info', '123-456-7890'),
              buildInfoRow('Guardian Name', 'Jane Doe'),
              buildInfoRow('Guardian Contact', '098-765-4321'),
              buildInfoRow('Ward', 'Ward Number: 1'),
              buildInfoRow('Bed Number', '10'),
              buildInfoRow('Diagnosis', 'Condition XYZ'),
              buildInfoRow('Allergies', 'None'),
              buildInfoRow('Doctor', 'Dr. John Wick '),
              const SizedBox(height: 20),
              const Text(
                'Medical History',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              buildMedicalHistoryRow('2023-12-01', 'Routine Checkup', 'No issues found'),
              buildMedicalHistoryRow('2023-11-20', 'Flu', 'Prescribed medication for flu'),
              buildMedicalHistoryRow('2023-10-15', 'Back Pain', 'Physiotherapy recommended'),
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

  Widget buildMedicalHistoryRow(String date, String condition, String notes) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            'Condition: $condition',
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            'Notes: $notes',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
