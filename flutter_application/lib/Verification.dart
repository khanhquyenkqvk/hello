import 'package:flutter/material.dart';
import 'package:flutter_application_1/sigin.dart';


class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: const ForgotPasswordForm(),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                // có thể thêm xác thực email nếu cần
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            RaisedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _sendResetEmail();
                }
              },
              child: const Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }

  void _sendResetEmail() {
    // có thể triển khai email để đặt lại mật khẩu 
    String email = _emailController.text;
    // xử lý chức năng quên mật khẩu, gửi lại email đặt lại đến địa chỉ email được cung cấp
    print('Reset password email sent to $email');
    // có thể điều hướng đến trang xác nhận or hiển thị hộp thoại 
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Password Reset'),
          content: Text('Password reset instructions sent to $email'),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

// ignore: non_constant_identifier_names
FlatButton({required Null Function() onPressed, required Text child}) {
}

void main() {
  runApp(const MaterialApp(
    home: ForgotPasswordPage(),
  ));
}