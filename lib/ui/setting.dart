import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            Icon(
              Icons.settings,
              size: 50,
              color: Colors.green,
            ),
            Text(
              'setting Page',
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
