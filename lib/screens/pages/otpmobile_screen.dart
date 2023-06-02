import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/screens/constants/mycolors.dart';
import 'otp_screen.dart';

class OtpMobileScreen extends StatefulWidget {
  const OtpMobileScreen({Key? key}) : super(key: key);

  @override
  State<OtpMobileScreen> createState() => _OtpMobileScreenState();
}

class _OtpMobileScreenState extends State<OtpMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 280.0, left: 10.0),
                          child: Text(
                            'Verification',
                            style: GoogleFonts.arsenal(
                              fontSize: 26,
                              letterSpacing: 1.4,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Code',
                            style: GoogleFonts.arsenal(
                              fontSize: 23,
                              letterSpacing: 1.4,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 50,
                    child: Image.asset(
                      'assets/images/otp.png',
                      height: 200,
                      width: 210,
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 0.1,
                color: Colors.grey,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xfff8fafb),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    'We will send you a one-time password to \nyour Mobile Number! ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffbfc1c2)),
                  ),
                ),
              ),
              const Divider(
                thickness: 0.1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Enter Mobile Number',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40, bottom: 20),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Enter Phone Number',
                    filled: true,
                    fillColor: Colors.grey,
                  ),
                ),
              ),
              const Divider(
                thickness: 0.08,
                color: Colors.grey,
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 45),
                    backgroundColor: primaryColor),
                child: const Text(
                  'Get OTP',
                  style: TextStyle(fontSize: 15, color: whiteColor, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Divider(
                thickness: 0.08,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
