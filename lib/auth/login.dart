import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juru_sampah/auth/register.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isShowPassword = false;
  bool isEmailFilled = false;
  bool isPasswordFilled = false;
  bool isEmailFocused = false;
  bool isPasswordFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  SizedBox(height: 60),
                  Text(
                    'Juru Sampah',
                    style: TextStyle(
                      fontFamily: 'Jomhuria',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff51BF48),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Image.asset(
                'assets/logo login.png', // Ganti dengan path gambar Anda
                height: 220,
                width: 300,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 16),
              const Text(
                'Selamat datang di Juru Sampah!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                'Kelola Sampah Anda Menjadi Lebih Mudah',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                onChanged: (value) {
                  setState(() {
                    isEmailFilled = value.isNotEmpty;
                  });
                },
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  icon: Icon(Icons.email,
                      color: isEmailFilled ? Colors.green : Colors.grey),
                  suffixIcon: isEmailFilled
                      ? const Icon(
                          Icons.check,
                          color: Colors.green,
                        )
                      : null,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                obscureText: !isShowPassword,
                onChanged: (value) {
                  setState(() {
                    isPasswordFilled = value.isNotEmpty;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Password',
                  icon: Icon(Icons.lock,
                      color: isPasswordFilled ? Colors.green : Colors.grey),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
                        });
                      },
                      icon: isShowPassword
                          ? const Icon(
                              Icons.visibility,
                              color: Colors.green,
                            )
                          : const Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            )),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Handle login as user
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(0, 152, 91, 100)),
                child: const Text('Masuk sebagai User',
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  // Handle login as admin
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(0, 152, 91, 100)),
                child: const Text('Masuk sebagai Admin',
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 16),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/Line 1.png', // Ganti dengan path gambar Anda
                    // height: 10,
                    width: 125,
                    // fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 24.30),
                  const Text('atau'),
                  const SizedBox(width: 24.30),
                  Image.asset(
                    'assets/Line 1.png', // Ganti dengan path gambar Anda
                    // height: 10,
                    width: 125,
                    // fit: BoxFit.contain,
                  ),
                ],
              ),
              const SizedBox(height: 13),
              Text('Silahkan daftar jika anda tidak memiliki akun',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(height: 14),
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterForm()),
                    );
                    // Handle registration
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromRGBO(161, 161, 161, 100)),
                  child: const Text('Daftar',
                      style: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
