import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            Icon(
              Icons.account_circle,
              size: 50,
              color: Colors.green,
            ),
            Text(
              'Profile Page',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20
              ),

            ),
          ],
        ),
      ),
    );
  }
}
