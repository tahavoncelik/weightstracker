import 'package:flutter/material.dart';
import 'package:weightstracker/theme/projectcolor.dart';
import 'package:weightstracker/ui/ui_components/my_message_box.dart';
import 'package:weightstracker/ui/ui_components/my_text.dart';

import 'home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColor().darkGrey,
      floatingActionButton: const AddExerciseButton(),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ProfilePageFirst(),
                  SizedBox(height: 20,),
                  ProfilePageSecond(),
                  SizedBox(height: 20,),
                  ProfilePageThird(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfilePageFirst extends StatefulWidget {
  const ProfilePageFirst({super.key});

  @override
  State<ProfilePageFirst> createState() => _ProfilePageFirstState();
}

class _ProfilePageFirstState extends State<ProfilePageFirst> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.settings, color: ProjectColor().white,),
            const SizedBox(width: 105,),
            Column(
              children: [
                Image.asset('lib/assets/home1.png'),
                const SizedBox(height: 5,),
                const MyText(data: 'John Smith', weight: FontWeight.bold, size: 20,),
                const SizedBox(height: 5,),
                const MyText(data: '@johnsmith', size: 10,)
              ],
            ),
          ],
        ),
        const SizedBox(height: 15,),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                MyText(data: '15', weight: FontWeight.bold,),
                MyText(data: 'Programs')
              ],
            ),
            Column(children: [
              MyText(data: '24', weight: FontWeight.bold,),
              MyText(data: 'Exercises')
            ],)
          ],
        )
      ],
    );
  }
}

class ProfilePageSecond extends StatefulWidget {
  const ProfilePageSecond({super.key});

  @override
  State<ProfilePageSecond> createState() => _ProfilePageSecondState();
}

class _ProfilePageSecondState extends State<ProfilePageSecond> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyText(data: 'My progress', weight: FontWeight.bold, size: 20,),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(Icons.stacked_bar_chart, color: ProjectColor().white, size: 30,),
                  const MyText(data: '149', weight: FontWeight.bold, size: 20,),
                  const MyText(data: 'Workouts Completed'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_fire_department_outlined, color: ProjectColor().white, size: 30,),
                  const MyText(data: '18 900', weight: FontWeight.bold, size: 20,),
                  const MyText(data: 'Total Reps'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.thumb_up, color: ProjectColor().white, size: 30,),
                  const MyText(data: '53', weight: FontWeight.bold, size: 20,),
                  const MyText(data: 'Personal Records'),
                ],
              ),
            ],
        )
      ],
    );
  }
}

class ProfilePageThird extends StatefulWidget {
  const ProfilePageThird({super.key});

  @override
  State<ProfilePageThird> createState() => _ProfilePageThirdState();
}

class _ProfilePageThirdState extends State<ProfilePageThird> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(data: 'Achievements', weight: FontWeight.bold, size: 20,),
        SizedBox(height: 10,),
        MyMessageBox(title: 'Strength Master', subtitle: 'Lift Weights for 500 minutes'),
        SizedBox(height: 10,),
        MyMessageBox(title: 'Weekender', subtitle: 'Two workouts on the weekend'),
        SizedBox(height: 10,),
        MyMessageBox(title: 'Super Heat', subtitle: 'Master 5 endurance workouts!'),
      ],
    );
  }
}




