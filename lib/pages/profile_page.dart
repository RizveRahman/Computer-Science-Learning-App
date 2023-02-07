import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    double myHeight = MediaQuery.of(context).size.height;
    double myWeight = MediaQuery.of(context).size.width;

    //var contentArry = ['My Courses', 'Bookmarked Articles', 'Bookmarked Video' 'Interests'];

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff131417),
        body: SingleChildScrollView(
          child: SizedBox(
            width: myWeight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff2b2b2b),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))
                    ),
                    height: 150,
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 100,
                            child: Center(
                              child: CircleAvatar(
                                backgroundColor: Color(0xff273238),

                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                const Text("Rizve Rahman Reza", style:
                                TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white70
                                ),
                                ),
                                SizedBox(height: 10,),
                                const Text('Green University of Bangladesh',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white70
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(user.email!, style: TextStyle(color: Colors.green),),
                              ],
                            ))
                      ],
                    ),
                  ),

                  const SizedBox(height: 15,),

                  // Content Section
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff2b2b2b),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))
                    ),
                    height: myHeight * 1.2,
                    width: myWeight * 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10,left: 20),
                          child: Text("Content", style: TextStyle(fontSize: 25, color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff1e1e1e),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            height: myHeight * 0.07,
                            width: myWeight * 0.9,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff1e1e1e),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            height: myHeight * 0.07,
                            width: myWeight * 0.9,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff1e1e1e),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            height: myHeight * 0.07,
                            width: myWeight * 0.9,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff1e1e1e),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            height: myHeight * 0.07,
                            width: myWeight * 0.9,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff1e1e1e),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            height: myHeight * 0.07,
                            width: myWeight * 0.9,
                          ),
                        ),
                      ],
                    )

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




