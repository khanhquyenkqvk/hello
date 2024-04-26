import 'package:flutter/material.dart';
import 'package:flutter_application_1/Profile.dart';

class PasswordSettingScreen extends StatelessWidget {
  const PasswordSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var buttonStyle = ButtonStyle;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Password'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context)
                .pop(); // Điều hướng trở lại Verification
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Set Password',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Set your password',
              style: TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF008955)),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Confirm password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF008955)),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Password must contain at least 1 digit or special character.',
              style: TextStyle(color: Colors.red),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Điều hướng đến ProfileFormScreen khi nhấn nút Register
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              style: buttonStyle,
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
