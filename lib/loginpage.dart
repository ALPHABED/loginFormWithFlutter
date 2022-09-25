import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // set on of
  bool _obScure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 147, 214, 158),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            height: 25,
          ),
          // hello again
          const Text(
            'Asterix',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Welcome Out To Jungle',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Email'),
                ),
              ),
            ),
          ),

          // email textfield

          // pw textfield
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextField(
                  obscureText: _obScure,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      // logic icon
                      suffixIcon: IconButton(
                        icon: Icon(
                            _obScure ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _obScure = !_obScure;
                          });
                        },
                      )),
                ),
              ),
            ),
          ),
          // sign in button
          const SizedBox(
            height: 25,
          ),
          // not a number? register now
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 141, 20),
                  borderRadius: BorderRadius.circular(14)),
              child: const Center(
                  child: Text(
                'Sign In',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              )),
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Have no account? ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Register Now!',
                style: TextStyle(color: Color.fromARGB(255, 1, 88, 159)),
              )
            ],
          )
        ]),
      ),
    );
  }
}
