import 'package:flutter/material.dart';
import 'package:mahmoud/componets/homeItem.dart';
import 'package:mahmoud/screans/Donor_Screen.dart';
import 'package:mahmoud/screans/clinic.dart';
import 'package:mahmoud/screans/guidelines.dart';
import 'package:mahmoud/screans/hospital_screen.dart';
import 'package:mahmoud/screans/lab_search.dart';
import 'package:mahmoud/screans/profile.dart';
import 'package:mahmoud/screans/search.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50.0, top: 120.0, right: 50.0),
          child: Text(
            ' Welcome ',
            style: TextStyle(
              fontSize: 40.0,
              fontFamily: AutofillHints.countryName,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 30.0, top: 90.0, right: 30.0, bottom: 20.0),
            child: Row(
              children: [
                HomeItem(
                  text: ('Donors'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DonorSearch();
                      }),
                    );
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                HomeItem(
                  text: ('Hospitals'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return SearchScreen();
                      }),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        Divider(
          indent: 20.0,
          endIndent: 20.0,
          thickness: 2.0,
          color: Colors.grey[300],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 30.0, top: 20.0, right: 30.0, bottom: 90.0),
            child: Row(
              children: [
                HomeItem(
                  text: ('Analysis\n   Labs'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return lab_search();
                      }),
                    );
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                HomeItem(
                  text: ('Clinics'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return clinic();
                      }),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
