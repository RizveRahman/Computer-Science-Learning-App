import 'package:computer_science_in_bangla/components/bottom_nav.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;


  // Logout Function
  void logOut() async{
    showDialog(context: context, builder: (context){
      return const Center(
        child: CircularProgressIndicator(),
      );
    });

    FirebaseAuth.instance.signOut();

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //bottomNavigationBar: BottomNavBar(),
        // appBar: AppBar(actions: [
        //   IconButton(onPressed: logOut, icon: const Icon(Icons.logout))
        // ],),

        body: Center(child: Column(
          children: [
            Text("data")
          ],
        )
        ),
      ),
    );
  }
}
