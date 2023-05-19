import 'package:flutter/material.dart';
import 'package:mahmoud/componets/search_bar.dart';
import 'package:mahmoud/screans/home.dart';

class lab_search extends StatefulWidget {
  const lab_search({super.key});

  @override
  State<lab_search> createState() => _lab_searchState();
}

class _lab_searchState extends State<lab_search> {
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
                    return Search_V();
                  }),
            )
          ],
        ),
      ),
    );
  }
}