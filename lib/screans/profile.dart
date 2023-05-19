import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
          ),
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          elevation: 0.0,
        ),
        body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/Ellipse 32.png'),
              radius: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Mohamed Shokair',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              ' abdullah27@gmail.com',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Edit Profile '),
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(height: 5),
                  SizedBox(width: 7),
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  Text(
                    ' mobile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 120),
                  Text(
                    '01097445564 ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(height: 5),
                  SizedBox(width: 7),
                  Icon(
                    Icons.bloodtype_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                    ' Blood Group',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 120),
                  Text(
                    '215423 ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(height: 5),
                  SizedBox(width: 7),
                  Icon(
                    Icons.location_on,
                    color: Colors.blue,
                  ),
                  Text(
                    ' Location',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 120),
                  Text(
                    'Egypt,Faiyum',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(height: 5),
                  SizedBox(width: 7),
                  Icon(
                    Icons.dark_mode,
                    color: Colors.blue,
                  ),
                  Text(
                    ' Dark mode',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 120),
                  Text(
                    'E253512    ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              child: Row(children: [
                SizedBox(height: 5),
                SizedBox(width: 7),
                Icon(
                  Icons.language,
                  color: Colors.blue,
                ),
                Text(
                  ' language',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 120),
                Text(
                  'English         ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ]),
            )
          ])
        ]));
  }
}
