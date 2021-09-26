import 'package:better_learn_programming/database/programming-tile-data.dart';
import 'package:better_learn_programming/provider/JS%20Programming/loops_tutorial.dart';
import 'package:better_learn_programming/provider/Java%20Programming/loop_tutorial.dart';
import 'package:better_learn_programming/provider/Python%20Programming/loop_tutorial.dart';
import 'package:better_learn_programming/screen/language_tile_page.dart';
import 'package:better_learn_programming/widgets/topics/custom_topic_app_bar.dart';
import 'package:better_learn_programming/widgets/topics/topics_intro.dart';
import 'package:better_learn_programming/widgets/topics/topics_program.dart';
import 'package:better_learn_programming/widgets/topics/topics_program_description.dart';
import 'package:better_learn_programming/widgets/topics/topics_program_output.dart';
import 'package:flutter/material.dart';
import 'package:better_learn_programming/provider/C%20Programming/loops_tutorial.dart';

class Topic5 extends StatelessWidget {
  final int id;
  const Topic5({
    Key key,
    this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tutorialKey = categoryTile.firstWhere((e) => e.id == id);
    final height = MediaQuery.of(context).size.height;
    var jsLoopTutorial2 = jsLoopTutorial;
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(
          onTap: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => LanguageTilePage()));
          },
          topicTitle: '${tutorialKey.topic5} of ${tutorialKey.name}',
        ),
        preferredSize:
            Size(double.infinity, MediaQuery.of(context).size.height * .08),
      ),
      body: cLoopsTutorial[0].id == tutorialKey.id
          ? ListView.builder(
              itemCount: cLoopsTutorial.length, //will be changed
              itemBuilder: (BuildContext context, int _) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      TopicsIntro(
                        // topicId: 1 + index,
                        topicTitle: cLoopsTutorial[_].topicTitle,
                        topicDescription: cLoopsTutorial[_].topicDescription,
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgram(
                          topicProgram: cLoopsTutorial[_].sampleProgram),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgramOutput(
                          topicProgramOutput:
                              cLoopsTutorial[_].sampleProgramOutput),
                      SizedBox(
                        height: height / 50,
                      ),
                      TopicsProgramDescription(
                          topicProgramDescription:
                              cLoopsTutorial[_].programDescription)
                    ],
                  ),
                );
              },
            )
          : javaLoopTutorial[0].id == tutorialKey.id
              ? ListView.builder(
                  itemCount: javaLoopTutorial.length,
                  itemBuilder: (BuildContext context, _) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          TopicsIntro(
                            // topicId: 1 + index,
                            topicTitle: javaLoopTutorial[_].topicTitle,
                            topicDescription:
                                javaLoopTutorial[_].topicDescription,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgram(
                              topicProgram: javaLoopTutorial[_].sampleProgram),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramOutput(
                              topicProgramOutput:
                                  javaLoopTutorial[_].sampleProgramOutput),
                          SizedBox(
                            height: 10,
                          ),
                          TopicsProgramDescription(
                              topicProgramDescription:
                                  javaLoopTutorial[_].programDescription)
                        ],
                      ),
                    );
                  },
                )
              : pythonLoopTutorial[0].id == tutorialKey.id
                  ? ListView.builder(
                      itemCount: pythonLoopTutorial.length,
                      itemBuilder: (BuildContext context, _) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              TopicsIntro(
                                // topicId: 1 + index,
                                topicTitle: pythonLoopTutorial[_].topicTitle,
                                topicDescription:
                                    pythonLoopTutorial[_].topicDescription,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgram(
                                  topicProgram:
                                      pythonLoopTutorial[_].sampleProgram),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramOutput(
                                  topicProgramOutput: pythonLoopTutorial[_]
                                      .sampleProgramOutput),
                              SizedBox(
                                height: 10,
                              ),
                              TopicsProgramDescription(
                                  topicProgramDescription:
                                      pythonLoopTutorial[_].programDescription)
                            ],
                          ),
                        );
                      },
                    )
                  : jsLoopTutorial2[0].id == tutorialKey.id
                      ? ListView.builder(
                          itemCount: jsLoopTutorial.length,
                          itemBuilder: (BuildContext context, _) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  TopicsIntro(
                                    // topicId: 1 + index,
                                    topicTitle: jsLoopTutorial[_].topicTitle,
                                    topicDescription:
                                        jsLoopTutorial[_].topicDescription,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgram(
                                      topicProgram:
                                          jsLoopTutorial[_].sampleProgram),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramOutput(
                                      topicProgramOutput: jsLoopTutorial[_]
                                          .sampleProgramOutput),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TopicsProgramDescription(
                                      topicProgramDescription:
                                          jsLoopTutorial[_].programDescription)
                                ],
                              ),
                            );
                          },
                        )
                      : null,
    );
  }
}
