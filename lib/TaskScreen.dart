
import 'package:assignment_1/MyPractice.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyPractice()));
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: Colors.lightBlueAccent,
            ),
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/T.jpg'),
                ),
                Text(
                  "koushik Ahmed Shuvo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
                Text(
                  "Koushika608@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "My Tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "5 Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              //height: 100,
              color: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.lightBlueAccent,
                    size: 50,
                  ),
                  Icon(
                    Icons.dangerous,
                    color: Colors.lightBlueAccent,
                    size: 50,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.lightBlueAccent,
                    size: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
