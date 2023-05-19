import 'package:flutter/material.dart';
import 'package:mahmoud/componets/search_bar.dart';
import 'package:mahmoud/screans/Donor_Pofile.dart';
import 'package:mahmoud/screans/home.dart';

class DonorSearch extends StatefulWidget {
  @override
  State<DonorSearch> createState() => _DonorSearchState();
}

class _DonorSearchState extends State<DonorSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, top: 30, right: 100, bottom: 5),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (context) => home()));
                      },
                      child: Icon(Icons.arrow_back))
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2, top: 0),
                  child: Container(
                    height: 50,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1615109398623-88346a601842?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(60),
                      color: Color(
                        0xffE4F6E3,
                      ).withOpacity(.2),
                      border: Border.all(color: Colors.blue),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
                  child: Search(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, right: 2),
                  child: Icon(
                    Icons.add_road_rounded,
                    size: 35,
                  ),
                ),
              ],
            ),
            Container(
              height: 760,
              child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 12, right: 15),
                      child: Container(
                        height: 80,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DonorProfile()));
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Container(
                                  height: 65,
                                  width: 68,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://images.unsplash.com/photo-1581382575275-97901c2635b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(
                                      0xffE4F6E3,
                                    ).withOpacity(.2),
                                    border: Border.all(color: Colors.blue),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Abdullah Mamdouh',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.blue),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text(
                                        'Egypt , Fayoum',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(Icons.bloodtype)
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(
                              0xffE4F6E3,
                            ).withOpacity(.25),
                            border: Border.all(color: Colors.blue)),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
