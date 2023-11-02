import 'package:flutter/material.dart';
import 'package:final_submission/model/course_list.dart';
import '../detail_screen.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 600) {
        return ScienceGrid(
            gridCount: 2); //nnti bikin lagi yg buat mobile CourseGridMobile
      } else if (constraints.maxWidth <= 1200) {
        return ScienceGrid(gridCount: 4);
      } else {
        return ScienceGrid(gridCount: 6);
      }
    }));
  }
}

class ScienceGrid extends StatelessWidget {
  final int gridCount;

  const ScienceGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(
          color: Color.fromARGB(255, 255, 137, 145),
        ),
        title: const Text(
          'Natural Science Course',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'Lexend',
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.count(
              crossAxisCount: gridCount,
              crossAxisSpacing: 5,
              mainAxisSpacing: 20,
              children: courseScience.map((course) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(course: course);
                    }));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 0,
                          color: Color.fromARGB(255, 255, 237, 241),
                          shadowColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            course.imageAsset,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: [
                            Text(
                              course.name,
                              style: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 253, 56, 83)),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 20),
                                SizedBox(width: 4),
                                Text(
                                  course.rating,
                                  style: const TextStyle(
                                    fontSize: 11.0,
                                  ),
                                ),
                                SizedBox(width: 70),
                                Icon(Icons.stacked_bar_chart,
                                    size: 20,
                                    color: Color.fromARGB(255, 255, 117, 133)),
                                SizedBox(width: 4),
                                Text(course.grade,
                                    style: const TextStyle(
                                      fontSize: 11.0,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            )),
      ),
    );
  }
}
