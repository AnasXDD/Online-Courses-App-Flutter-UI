import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:free_courses_ui/home.dart';
import 'package:free_courses_ui/instructor%20profile.dart';

class MentorProfile1 extends StatefulWidget {
  const MentorProfile1({Key? key}) : super(key: key);

  @override
  State<MentorProfile1> createState() => _MentorProfile1State();
}

class _MentorProfile1State extends State<MentorProfile1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => Home1())));
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          color: Color(0xFFffffff),
                          boxShadow: [
                            // BoxShadow(
                            //   color: Color.fromARGB(255, 214, 210, 210),
                            //   blurRadius: 4, // soften the shadow
                            //   spreadRadius: 2, //extend the shadow
                            // )
                          ],
                        ),
                        child: Icon(Icons.arrow_back, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        color: Color(0xFFffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 214, 210, 210),
                            blurRadius: 4, // soften the shadow
                            spreadRadius: 2, //extend the shadow
                          )
                        ],
                      ),
                      child: Icon(Icons.share),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        color: Color(0xFFffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 214, 210, 210),
                            blurRadius: 4, // soften the shadow
                            spreadRadius: 2, //extend the shadow
                          )
                        ],
                      ),
                      child: Icon(Icons.storefront),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(
                    image: AssetImage('assets/MentorProfilePic.png'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Basic UI/UX Designer',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFFffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 214, 210, 210),
                            blurRadius: 4, // soften the shadow
                            spreadRadius: 2, //extend the shadow
                          )
                        ],
                      ),
                      child: Icon(Icons.shopping_cart),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      '4.8',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffFFBF69),
                      size: 13,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffFFBF69),
                      size: 13,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffFFBF69),
                      size: 13,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffFFBF69),
                      size: 13,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffFFBF69),
                      size: 13,
                    ),
                    Text(
                      '(534)',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      '145/=',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2EC4B6),
                          fontFamily: 'Poppins'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '169/=',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Color(0xff2EC4B6),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Created By',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        // color: Color(0xff2EC4B6),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => InstructorProfile())));
                      },
                      child: Text(
                        'Azamat Baimatov',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.people,
                      size: 15,
                    ),
                    Text(
                      '1203 Members',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Icon(
                      Icons.video_file,
                      size: 15,
                    ),
                    Text(
                      '42 Lessons',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Icon(
                      Icons.emoji_events,
                      size: 15,
                    ),
                    Text(
                      'Certificate',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TabBar(
                      indicatorColor: Color(0xff2EC4B6),
                      labelColor: Color(0xff2EC4B6),
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Text('Details',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        Text('Lessons',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        Text('Reviews',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: TabBarView(children: [
                    Text(
                        '\nWhat you will learn \n\n Follow the design process: empathize with users, define pain points, ideate solutions, create wireframes and prototypes, test and iterate on designs \n\n Understand the basics of UX research, like planning research studies, conducting interviews and usability studies, and synthesizing research results \n\n Apply foundational UX concepts, like user-centered design, accessibility, and equity-focused design \n\n Create a professional UX portfolio that includes 3 end-to-end projects: a mobile app, a responsive website, and a cross-platform experience',
                        style: TextStyle(fontSize: 15)),
                    Text(
                        '\n1) Introducing UI/UX design. \n\n 2) Thinking like a UI/UX designer. \n\n 3) Joining design sprints. \n\n 4) Integrating research into the design process',
                        style: TextStyle(fontSize: 15)),
                    Text(
                        '\nTOP REVIEWS OF THIS COURSE UI/UX DESIGN: \n\n 1) I think the most interesting part is that the learner, not only learns the basics of UX but also gets into the mindset of building an online portfolio (and presence in general). Guided step by step. \n\n 2) It is pretty good. You learn new things even as someone who has some idea of what UX is. Would recommend to those who want to start learning because it is affordable and provides valuable information.\n\n 3) Very fun and informative course, finished all 4 weeks in 4 days very easily. Kept it well engaging and had the perfect amount of visuals, reading, and videos along with mini quizzes and assignments.\n\n 4) This course inspired me, before taking this course I have been used some UX Design communities, I have worked in Adobe XD Design. This course explains the right way and UX process. I like this mentor.',
                        style: TextStyle(fontSize: 15)),
                  ]),
                )

                // TabBarView(children: [
                //   Text('data'),
                //   Text('data'),
                //   Text('data'),
                // ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}


                  // TabBar(tabs: [
                  //   Text('Details'),
                  //   Text('Lessons'),
                  //   Text('Reviews'),
                  // ]),
                  // TabBarView(children: [
                  //   Text('data'),
                  //   Text('data'),
                  //   Text('data'),
                  // ])



                //   TabBar(tabs: [
                //   Text('Details'),
                //   Text('Lessons'),
                //   Text('Reviews'),
                // ]),



                //                 Container(
                //   child: TabBarView(children: [
                //     Text('data'),
                //     Text('data'),
                //     Text('data'),
                //   ]),
                // )