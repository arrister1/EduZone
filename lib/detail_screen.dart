import 'package:final_submission/model/course_list.dart';
import 'package:final_submission/styling/button_style.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final CourseData course;

  const DetailScreen({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 700) {
        return DetailWeb(course: course);
      } else {
        return DetailMobile(course: course);
      }
    }));
  }
}

class DetailMobile extends StatelessWidget {
  final CourseData course;
  const DetailMobile({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60)),
                      color: Color.fromARGB(255, 255, 237, 241)),
                  width: double.infinity,
                  child: Image.asset(
                    course.imageAsset,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Color.fromARGB(255, 255, 104, 114),
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const FavoriteButton(),
                    ],
                  ),
                ))
              ]),
              Container(
                padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(course.name,
                        //textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.black,
                        )),
                    Container(
                      padding:
                          EdgeInsets.only(left: 6, right: 6, top: 3, bottom: 3),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 145, 158),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 20),
                          SizedBox(width: 5),
                          Text(
                            '${course.rating} rating',
                            style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 25.0, top: 15.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10),
                      Row(children: <Widget>[
                        Icon(Icons.stacked_bar_chart,
                            size: 22,
                            color: Color.fromARGB(255, 255, 117, 133)),
                        SizedBox(width: 7),
                        Text(
                          'Tersedia untuk jenjang kelas ${course.grade}',
                          style: const TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w600),
                        ),
                      ]),
                      SizedBox(height: 10),
                      Row(children: <Widget>[
                        Icon(Icons.category,
                            size: 22,
                            color: Color.fromARGB(255, 255, 117, 133)),
                        SizedBox(width: 7),
                        Text(
                          course.category,
                          style: const TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w600),
                        ),
                      ])
                    ],
                  )),
              Container(
                padding: EdgeInsets.all(25.0),
                child: Text(course.description,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 16.0,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 25.0, right: 25.0, bottom: 10.0, top: 10.0),
                child: ElevatedButton(
                    style: buttonDetail,
                    onPressed: () {
                      var snackBar = SnackBar(
                          backgroundColor:
                              const Color.fromARGB(255, 80, 106, 255),
                          content: Text(
                            'Oops, maaf pendaftaran belum dibuka lagi >.<',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'Lexend'),
                          ));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Text('Daftar Sekarang')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailWeb extends StatefulWidget {
  final CourseData course;
  const DetailWeb({Key? key, required this.course}) : super(key: key);

  @override
  State<DetailWeb> createState() => _DetailWebState();
}

class _DetailWebState extends State<DetailWeb> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 80,
            horizontal: 90,
          ),
          child: Center(
            child: SizedBox(
              width: screenWidth <= 1200 ? 700 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Stack(children: <Widget>[
                          Container(
                            //height: 400,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color.fromARGB(255, 255, 237, 241)),
                            width: 400,
                            child: Image.asset(
                              widget.course.imageAsset,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          // SafeArea(
                          //     child: Padding(
                          //   padding: const EdgeInsets.all(6.0),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.end,
                          //     children: [
                          //       Padding(
                          //         padding: const EdgeInsets.all(7.0),
                          //         child: const FavoriteButton(),
                          //       ),
                          //     ],
                          //   ),
                          // )),
                        ]),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(widget.course.name,
                                      //textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25.0,
                                        color: Colors.black,
                                      )),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 6, right: 6, top: 3, bottom: 3),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 145, 158),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 20),
                                        SizedBox(width: 5),
                                        Text(
                                          '${widget.course.rating} rating',
                                          style: const TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 25.0, top: 15.0),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(height: 10),
                                    Row(children: <Widget>[
                                      Icon(Icons.stacked_bar_chart,
                                          size: 22,
                                          color: Color.fromARGB(
                                              255, 255, 117, 133)),
                                      SizedBox(width: 7),
                                      Text(
                                        'Tersedia untuk jenjang kelas ${widget.course.grade}',
                                        style: const TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ]),
                                    SizedBox(height: 10),
                                    Row(children: <Widget>[
                                      Icon(Icons.category,
                                          size: 22,
                                          color: Color.fromARGB(
                                              255, 255, 117, 133)),
                                      SizedBox(width: 7),
                                      Text(
                                        widget.course.category,
                                        style: const TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ])
                                  ],
                                )),
                            Container(
                              padding: EdgeInsets.all(25.0),
                              child: Text(widget.course.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                  )),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 25.0,
                                  right: 25.0,
                                  bottom: 10.0,
                                  top: 10.0),
                              child: ElevatedButton(
                                  style: buttonDetail,
                                  onPressed: () {
                                    var snackBar = SnackBar(
                                        backgroundColor: const Color.fromARGB(
                                            255, 80, 106, 255),
                                        content: Text(
                                          'Oops, maaf pendaftaran belum dibuka lagi >.<',
                                          textAlign: TextAlign.center,
                                          style:
                                              TextStyle(fontFamily: 'Lexend'),
                                        ));
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                  child: const Text('Daftar Sekarang')),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
          color: Colors.red,
          isFavorite ? Icons.favorite : Icons.favorite_border),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
