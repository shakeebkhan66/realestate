import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signin_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 380,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right:250,top: 240),
                      child: Column(
                        children: [
                          Text(
                            'Create',
                            style: GoogleFonts.arsenal(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Account',
                            style: GoogleFonts.arsenal(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Image.asset(
                      'assets/images/customer.png',
                      height: 300,
                      width: 240,
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 0.1,
                color: Colors.grey,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xfff8fafb),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  child: Text('ACCOUNT INFORMATION',style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Color(0xffbfc1c2)),),
                ),
              ),
              const Divider(
                thickness: 0.1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,),
                child: Row(
                  children: [
                    const Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 160),
                    Expanded(
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: 'Enter your name',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0.08  ,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,),
                child: Row(
                  children: [
                    const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 130),
                    Expanded(
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: 'Enter your password',
                          border: InputBorder.none,
                        ),
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0.08  ,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,),
                child: Row(
                  children: [
                    const Text(
                      'Occupation',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 120),
                    Expanded(
                      child: TextFormField(
                        textInputAction: TextInputAction.done,
                        decoration: const InputDecoration(
                          hintText: 'Enter your occupation',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0.08  ,
                color: Colors.grey,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(380, 50),
                    backgroundColor: const Color(0xff240741)
                ),
                child: const Text('Sign up'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 0.08  ,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have account?',
                      style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff232c64)) ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SigninScreen()));
                    },
                    child: const Text('Signin'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


