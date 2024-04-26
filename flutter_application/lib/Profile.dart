import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context)
                .pop(); // Điều hướng trở lại PasswordSettingScreen
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              // Handle save button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
                // Xử lý khi nhấn vào ô tròn để tải ảnh từ thiết bị
                // Đây là nơi bạn có thể mở hộp thoại chọn ảnh hoặc thực hiện hành động tải ảnh khác
              },
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.camera_alt,
                  size: 40.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF008955)),
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Mobile Phone',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF008955)),
                ),
              ),
            ),
            TextFormField(
              decoration: const  InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF008955)),
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Street Address',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF008955)),
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'City',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF008955)),
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'District',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF008955)),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pop(); // Điều hướng trở lại PasswordSettingScreen khi nhấn Cancel
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(const Color(0xFF008955)),
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle save button press
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(const Color(0xFF008955)),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Profile(),
  ));
}
// TODO Implement this library.