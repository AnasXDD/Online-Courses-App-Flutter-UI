import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:free_courses_ui/home.dart';

class InstructorProfile extends StatefulWidget {
  const InstructorProfile({Key? key}) : super(key: key);

  @override
  State<InstructorProfile> createState() => _InstructorProfileState();
}

class _InstructorProfileState extends State<InstructorProfile>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: false,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Home1())));
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13)),
                                    color: Color(0xFFffffff),
                                    boxShadow: [
                                      // BoxShadow(
                                      //   color: Color.fromARGB(255, 214, 210, 210),
                                      //   blurRadius: 4, // soften the shadow
                                      //   spreadRadius: 2, //extend the shadow
                                      // )
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Instructor Profile',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/InstructorCard.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              expandedHeight: 380.0,
              bottom: TabBar(
                indicatorColor: Color(0xff2EC4B6),
                labelColor: Color(0xff2EC4B6),
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'About'),
                  Tab(text: 'Courses'),
                  Tab(text: 'Reviews'),
                ],
                controller: controller,
              ),
            )
          ];
        },
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: TabBarView(controller: controller, children: [
            Text(
                '\n\nHi My name is Azamat Baimatov, i work as a Senior UI/UX Designer in on of the biggest E-commerce in Indonesia, i Have more than 10 years of experience UI/UX Design in Startup & Corporate.\n\n First we’ll describe the brief & how to work with a UX persona.\n\n Then you’ll learn how to create simple wireframes.\n\n From there we’ll look at how to implement colours & images properly in your designs.\n\n You’ll learn the do’s & don’ts around choosing fonts for web & mobile apps.\n\n You’ll learn how to create your own icons, buttons & other UI components.',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey)),
            Text(
                '\n1) UI/UX design. \n\n 2) Flutter \n\n 3) Python Programming \n\n 4) AI with Python',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey)),
            Text(
                '\nTOP REVIEWS OF THIS INSTRUCTOR: \n\n 1) I think the most interesting part is that the learner, not only learns the basics of UX but also gets into the mindset of building an online portfolio (and presence in general). Guided step by step. \n\n 2) It is pretty good. You learn new things even as someone who has some idea of what UX is. Would recommend to those who want to start learning because it is affordable and provides valuable information.\n\n 3) Very fun and informative course, finished all 4 weeks in 4 days very easily. Kept it well engaging and had the perfect amount of visuals, reading, and videos along with mini quizzes and assignments.\n\n 4) This course inspired me, before taking this course I have been used some UX Design communities, I have worked in Adobe XD Design. This course explains the right way and UX process. I like this mentor.',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey)),
          ]),
        ),
        // body: ListView.builder(
        //   itemCount: 100,
        //   itemBuilder: (BuildContext context, int index) {
        //     return Card(
        //       color: index % 2 == 0 ? Colors.blue : Colors.green,
        //       child: Container(
        //         alignment: Alignment.center,
        //         width: double.infinity,
        //         height: 100.0,
        //         child: Text(
        //           'Flutter is awesome',
        //           style: TextStyle(fontSize: 18.0),
        //         ),
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}
