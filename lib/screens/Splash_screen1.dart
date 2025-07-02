import 'package:flutter/material.dart';

class MedCareScreen extends StatelessWidget {
  const MedCareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Image.asset(
              'assets/Group.png', 
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
            
            Text(
              'MEDCARE',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
          
            Text(
              'We are here to help keep you healthy',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('English'),
                SizedBox(width: 10),
                DropdownButton<String>(
                  items: <String>['English', 'Spanish', 'French']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ],
            ),
            SizedBox(height: 30),
            
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text(
                'Next',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
           
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/noPhoneRegister');
              },
              child: Text(
                'Register',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

