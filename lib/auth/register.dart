import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: RegisterForm(),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isEmailFilled = false;
  bool isPasswordFilled = false;
  bool isCheckboxChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  // Handle back arrow button press
                },
              ),
              const Text(
                'Daftar Akun',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Juru Sampah',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff51BF48)),
              ),
              const SizedBox(height: 24.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Username',
                  icon: Icon(Icons.contact_page,
                      color: isEmailFilled ? Colors.green : Colors.grey),
                ),
                onChanged: (value) {
                  setState(() {
                    isEmailFilled = value.isNotEmpty;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  icon: Icon(Icons.email,
                      color: isEmailFilled ? Colors.green : Colors.grey),
                ),
                onChanged: (value) {
                  setState(() {
                    isEmailFilled = value.isNotEmpty;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'No. Telepon',
                  icon: Icon(Icons.phone_android,
                      color: isEmailFilled ? Colors.green : Colors.grey),
                ),
                onChanged: (value) {
                  setState(() {
                    isEmailFilled = value.isNotEmpty;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  icon: Icon(Icons.lock,
                      color: isPasswordFilled ? Colors.green : Colors.grey),
                ),
                onChanged: (value) {
                  setState(() {
                    isPasswordFilled = value.isNotEmpty;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  icon: Icon(Icons.lock,
                      color: isPasswordFilled ? Colors.green : Colors.grey),
                ),
                onChanged: (value) {
                  setState(() {
                    isPasswordFilled = value.isNotEmpty;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Checkbox(
                    value: isCheckboxChecked,
                    onChanged: (value) {
                      setState(() {
                        isCheckboxChecked = value!;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  Text(
                    'Menyetujui persyaratan dan ketentuan',
                    style: TextStyle(
                        color: isCheckboxChecked ? Colors.black : Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle registration button press
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 152, 91, 100)),
              child: const Text('Registrasi',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ],
    );
  }
}
