import 'package:flutter/material.dart';
import 'package:taskweek3/app/screens/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void login() {
    String user = _usernameController.text.trim();
    String pass = _passwordController.text;

    if (user == 'admin' && pass == '123456') {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login Succeesfully')));
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Login Failed"),
          content: const Text("Incorrect username or password"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage('assets/image/9AJZW0.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            height: 320,
            width: 350,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  const Text('Login',
                      style: TextStyle(fontSize: 32, color: Colors.white)),
                  const SizedBox(height: 20),
                  Align(
                    alignment:Alignment.bottomLeft ,
                    child: Text('Username',style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.grey,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment:Alignment.bottomLeft ,
                    child: Text('Password',style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        
                      ),
                      filled: true,
                      fillColor: Colors.grey,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: login,
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text('Submit',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
