import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildSettingsSection(
            context,
            'Student Management',
            [
              _buildSettingsTile(
                context,
                'Add Student',
                Icons.person_add,
                () {
                  // Logic to add a student
                },
              ),
              _buildSettingsTile(
                context,
                'Edit Student',
                Icons.edit,
                () {
                  // Logic to edit a student
                },
              ),
              _buildSettingsTile(
                context,
                'Delete Student',
                Icons.delete,
                () {
                  // Logic to delete a student
                },
              ),
            ],
          ),
          const Divider(),
          _buildSettingsSection(
            context,
            'Data Management',
            [
              _buildSettingsTile(
                context,
                'Reset Attendance Data',
                Icons.refresh,
                () {
                  // Logic to reset attendance data
                },
              ),
            ],
          ),
          const Divider(),
          _buildSettingsSection(
            context,
            'Application Settings',
            [
              _buildSettingsTile(
                context,
                'Change Theme',
                Icons.color_lens,
                () {
                  // Logic to change theme
                },
              ),
              _buildSettingsTile(
                context,
                'Update School Info',
                Icons.school,
                () {
                  // Logic to update school info
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsSection(
      BuildContext context, String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        ...children,
      ],
    );
  }

  Widget _buildSettingsTile(
      BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(title),
      onTap: onTap,
    );
  }
}
