import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contact_screen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'EDIT PROFILE',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                    const Icon(
                      Icons.done,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 48,
                    child: Stack(children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white70,
                          child: Icon(
                            CupertinoIcons.camera,
                            size: 18,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'PUBLIC INFORMATION',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    cursorColor: Colors.grey,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      label: Text(
                        "First Name",
                        style: TextStyle(color: Colors.grey),
                      ),
                      suffixIcon: Icon(
                        Icons.done,
                        color: Colors.grey,
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                    cursorColor: Colors.grey,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      label: Text(
                        "Last Name",
                        style: TextStyle(color: Colors.grey),
                      ),
                      suffixIcon: Icon(
                        Icons.done,
                        color: Colors.grey,
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                    cursorColor: Colors.grey,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      label: Text(
                        "Location",
                        style: TextStyle(color: Colors.grey),
                      ),
                      suffixIcon: Icon(
                        Icons.done,
                        color: Colors.grey,
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                    cursorColor: Colors.grey,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      label: Text(
                        "Phone",
                        style: TextStyle(color: Colors.grey),
                      ),
                      suffixIcon: Icon(
                        Icons.done,
                        color: Colors.grey,
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                    cursorColor: Colors.grey,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      label: const Text(
                        "Email",
                        style: TextStyle(color: Colors.grey),
                      ),
                      suffixIcon: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ContactScreen()));
                          },
                          child: const Icon(
                            Icons.done,
                            color: Colors.grey,
                          )),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
