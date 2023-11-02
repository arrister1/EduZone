import 'package:final_submission/course_screen/course_screen.dart';
import 'package:final_submission/course_screen/lang.dart';
import 'package:final_submission/course_screen/science.dart';
import 'package:final_submission/course_screen/social.dart';
import 'package:flutter/material.dart';
import 'package:final_submission/detail_screen.dart';
import 'package:final_submission/model/course_list.dart';

class HomeScreen extends StatelessWidget {
  final String name;

  const HomeScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 600) {
        return HomeMobile(name: name);
      } else if (constraints.maxWidth <= 1200) {
        return HomeWeb(name: name);
      } else {
        return HomeWeb(name: name);
      }
    }));
  }
}

class HomeMobile extends StatelessWidget {
  final String name;

  const HomeMobile({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      child: Column(
        children: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: double.maxFinite,
              height: 175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage('images/front.jpg'),
                    fit: BoxFit.fitWidth),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 34),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                          height: 16,
                        ),
                        Text(
                          'Hi, ${name}!',
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Mau Belajar Apa',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hari Ini?',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 16.0, top: 30.0, right: 16.0, bottom: 15.0),
            child: Row(
              children: [
                Text(
                  'Category',
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LangScreen();
                      }));
                    },
                    child: Container(
                      width: 115,
                      height: 115,
                      child: Image.asset(
                        'images/lang.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ScienceScreen();
                      }));
                    },
                    child: Container(
                      width: 115,
                      height: 115,
                      child: Image.asset(
                        'images/natural.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SocialScreen();
                      }));
                    },
                    child: Container(
                      width: 115,
                      height: 115,
                      child: Image.asset(
                        'images/social.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  )
                ],
              )),
          Padding(
            padding: EdgeInsets.only(left: 16.0, top: 25.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Course',
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 255, 117, 133),
                    textStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lexend',
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CourseScreen();
                    }));
                  },
                  child: const Text('Lihat semua'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: courseList.length,
                itemBuilder: (context, index) {
                  final CourseData course = courseList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(course: course);
                      }));
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 170,
                          width: 170,
                          child: Card(
                            elevation: 0,
                            color: Color.fromARGB(255, 255, 237, 241),
                            shadowColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              course.imageAsset,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          course.name,
                          style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 253, 56, 83)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    )));
  }
}

class HomeWeb extends StatelessWidget {
  final String name;

  const HomeWeb({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      child: Column(
        children: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: double.maxFinite,
              height: 175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage('images/front.jpg'),
                    fit: BoxFit.fitWidth),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 34),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                          height: 16,
                        ),
                        Text(
                          'Hi, ${name}!',
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Mau Belajar Apa',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hari Ini?',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 16.0, top: 30.0, right: 16.0, bottom: 15.0),
            child: Row(
              children: [
                Text(
                  'Category',
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LangScreen();
                      }));
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      child: Image.asset(
                        'images/lang.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ScienceScreen();
                      }));
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      child: Image.asset(
                        'images/natural.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SocialScreen();
                      }));
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      child: Image.asset(
                        'images/social.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                ],
              )),
          Padding(
            padding: EdgeInsets.only(left: 16.0, top: 25.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Course',
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 255, 117, 133),
                    textStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lexend',
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CourseScreen();
                    }));
                  },
                  child: const Text('Lihat semua'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: courseList.length,
                itemBuilder: (context, index) {
                  final CourseData course = courseList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(course: course);
                      }));
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 170,
                          width: 170,
                          child: Card(
                            elevation: 0,
                            color: Color.fromARGB(255, 255, 237, 241),
                            shadowColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              course.imageAsset,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          course.name,
                          style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 253, 56, 83)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    )));
  }
}
