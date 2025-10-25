import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person_outline, size: 80, color: Colors.grey[400]),
            const SizedBox(height: 20),
            Text(
              "شاشة الملف الشخصي",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.grey[600]),
            ),
             const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "هنا يمكنك إدارة معلومات حسابك وتتبع طلباتك.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[500]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
