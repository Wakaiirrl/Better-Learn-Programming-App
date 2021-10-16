import 'package:better_learn_programming/screen/pages/quiz%20page/quiz-page.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/svg.dart';

class QuizWelcomePage extends StatefulWidget {
  const QuizWelcomePage({Key key}) : super(key: key);

  @override
  _QuizWelcomePageState createState() => _QuizWelcomePageState();
}

class _QuizWelcomePageState extends State<QuizWelcomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffece4dc),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              SvgPicture.asset(
                'images/town.svg',
                height: height * .3,
              ),
              Spacer(),
              Container(
                //height: height * .3,
                width: width * 0.75,
                child: Center(
                  child: AutoSizeText(
                    'Test your programming and coding skills with quizzes.\n\nPrepare yourself for the job interview! ',
                    textAlign: TextAlign.center,
                    minFontSize: 20,
                    maxLines: 6,
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        letterSpacing: 1,
                        color: Color(0xFF442C3E),
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Spacer(),
              Material(
                color: Colors.transparent,
                child: GestureDetector(
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffece4dc).withOpacity(0.1),
                          spreadRadius: 10,
                          blurRadius: 15,
                          offset: Offset(5, 3),
                        )
                      ],
                      // color: Color(0xFF442C3E),
                      color: Color(0xFF442C3E),
                    ),
                    child: Center(
                      child: Text(
                        'Start Quiz',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.w400,
                          fontSize: 36,
                          color: Color(0xffece4dc),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => QuizPage(),
                      ),
                    );
                  },
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
