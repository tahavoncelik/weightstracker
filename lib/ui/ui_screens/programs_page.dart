import 'package:flutter/material.dart';
import 'package:weightstracker/theme/projectcolor.dart';
import 'package:weightstracker/ui/ui_screens/home_page.dart';

import '../ui_components/my_text.dart';

class ProgramsPage extends StatefulWidget {
  const ProgramsPage({super.key});

  @override
  State<ProgramsPage> createState() => _ProgramsPageState();
}

class _ProgramsPageState extends State<ProgramsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColor().darkGrey,
      floatingActionButton: const AddExerciseButton(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const MyText(
                    data: 'Your Saved Programs',
                    align: TextAlign.start,
                    weight: FontWeight.bold,
                    size: 20,
                    direction: TextDirection.ltr,
                  ),
                  SizedBox(
                    width: 500,
                    child: ListView.builder(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: ProjectColor().lightGrey,
                                borderRadius: const BorderRadius.all(Radius.circular(10))
                              ),
                              child: Row(
                                children: [
                                  Image.asset('lib/assets/home2.png'),
                                  const SizedBox(width: 10,),
                                  const MyText(data: "Program's Name", weight: FontWeight.bold, size: 15,),
                                  const SizedBox(width: 50,),
                                  Icon(Icons.keyboard_double_arrow_right_outlined, size: 30, color: ProjectColor().white,)
                                ],
                              ),
                            ),
                          );
                        }),
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
