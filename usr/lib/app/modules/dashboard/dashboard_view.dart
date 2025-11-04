import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          IconButton(
            icon: const Icon(Icons.help),
            onPressed: () {
              Navigator.pushNamed(context, '/help');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Mark Student as Absent',
                hintText: 'Enter student name and press Enter',
                prefixIcon: Icon(Icons.person_off, color: Colors.redAccent),
              ),
              onSubmitted: (value) {
                // Logic to mark student as absent
              },
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView(
                children: [
                  _buildStudentTile('Student 1', 'Present'),
                  _buildStudentTile('Student 2', 'Absent'),
                  _buildStudentTile('Student 3', 'Present'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Logic to add a new student
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildStudentTile(String name, String status) {
    return Card(
      child: ListTile(
        title: Text(name),
        trailing: Text(
          status,
          style: TextStyle(
            color: status == 'Present' ? Colors.green : Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
