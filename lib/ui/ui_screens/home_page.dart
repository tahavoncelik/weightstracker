import 'package:flutter/material.dart';
import 'package:weightstracker/theme/projectcolor.dart';
import 'package:weightstracker/ui/ui_components/my_button.dart';
import 'package:weightstracker/ui/ui_components/my_message_box.dart';
import 'package:weightstracker/ui/ui_components/my_text.dart';
import 'package:weightstracker/ui/ui_components/my_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff161616),
      floatingActionButton: AddExerciseButton(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  WelcomeWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  AchievementMessage(),
                  SizedBox(
                    height: 20,
                  ),
                  SavedPrograms(),
                  SizedBox(
                    height: 20,
                  ),
                  TodaysWorkout()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({super.key});

  @override
  State<WelcomeWidget> createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('lib/assets/home1.png'),
        const SizedBox(
          width: 10,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              data: 'Welcome,',
              size: 20,
              weight: FontWeight.bold,
            ),
            MyText(
              data: 'John Doe',
              size: 17,
            )
          ],
        )
      ],
    );
  }
}

class AchievementMessage extends StatefulWidget {
  const AchievementMessage({super.key});

  @override
  State<AchievementMessage> createState() => _AchievementMessageState();
}

class _AchievementMessageState extends State<AchievementMessage> {
  @override
  Widget build(BuildContext context) {
    return const MyMessageBox(
        title: "You've completed 5 sets today",
        subtitle: '80% of your daily goal is achieved');
  }
}

class SavedPrograms extends StatefulWidget {
  const SavedPrograms({super.key});
  @override
  State<SavedPrograms> createState() => _SavedProgramsState();
}

class _SavedProgramsState extends State<SavedPrograms> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyText(
                data: 'Your Saved Programs',
                align: TextAlign.start,
                weight: FontWeight.bold,
                size: 20,
                direction: TextDirection.ltr,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 140,
                        height: 120,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('lib/assets/home2.png')),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: ProjectColor().grey,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8))),
                              width: 100,
                              height: 30,
                              child: const Center(child: MyText(data: 'Chest')),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TodaysWorkout extends StatefulWidget {
  const TodaysWorkout({super.key});
  @override
  State<TodaysWorkout> createState() => _TodaysWorkoutState();
}

class _TodaysWorkoutState extends State<TodaysWorkout> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyText(
              data: "Today's Workout",
              align: TextAlign.start,
              weight: FontWeight.bold,
              size: 20,
              direction: TextDirection.ltr,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset('lib/assets/home3.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  const MyText(
                    data: 'Morning Yoga Flow',
                    weight: FontWeight.bold,
                    size: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class AddExerciseButton extends StatefulWidget {
  const AddExerciseButton({super.key});

  @override
  State<AddExerciseButton> createState() => _AddExerciseButtonState();
}

class _AddExerciseButtonState extends State<AddExerciseButton> {
  final TextEditingController _exerciseNameController = TextEditingController();
  String _setDropdownValue = '1';
  String _repDropdownValue = '1';

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: ProjectColor().lightGrey,
      onPressed: () {
        showModalBottomSheet(
            backgroundColor: ProjectColor().darkGrey,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
            context: context,
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                color: ProjectColor().grey,
                              ),
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.fitness_center,
                                color: ProjectColor().white,
                                size: 30,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const MyText(
                            data: 'Create a new workout',
                            size: 25,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MyTextField(
                          controller: _exerciseNameController,
                          hintText: 'Name of exercise',
                          obsecureText: false),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const MyText(
                                data: 'Set',
                                size: 20,
                              ),
                              Container(
                                width: 60,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: ProjectColor().lightGrey,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))),
                                child: Center(
                                  child: DropdownButton<String>(
                                    dropdownColor: ProjectColor().lightGrey,
                                    underline: Container(),
                                    value: _setDropdownValue,
                                    style: const TextStyle(color: Colors.white),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _setDropdownValue = newValue!;
                                      });
                                    },
                                    items: const [
                                      DropdownMenuItem<String>(
                                          value: '1', child: Text('1')),
                                      DropdownMenuItem<String>(
                                          value: '2', child: Text('2')),
                                      DropdownMenuItem<String>(
                                          value: '3', child: Text('3')),
                                      DropdownMenuItem<String>(
                                          value: '4', child: Text('4')),
                                      DropdownMenuItem<String>(
                                          value: '5', child: Text('5'))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const MyText(
                                data: 'Rep',
                                size: 20,
                              ),
                              Container(
                                width: 60,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: ProjectColor().lightGrey,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))),
                                child: Center(
                                  child: DropdownButton<String>(
                                    dropdownColor: ProjectColor().lightGrey,
                                    underline: Container(),
                                    value: _repDropdownValue,
                                    style: const TextStyle(color: Colors.white),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _repDropdownValue = newValue!;
                                      });
                                    },
                                    items: const [
                                      DropdownMenuItem<String>(
                                          value: '1', child: Text('8')),
                                      DropdownMenuItem<String>(
                                          value: '2', child: Text('9')),
                                      DropdownMenuItem<String>(
                                          value: '3', child: Text('10')),
                                      DropdownMenuItem<String>(
                                          value: '4', child: Text('11')),
                                      DropdownMenuItem<String>(
                                          value: '5', child: Text('12'))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          const MyText(data: 'Choose Program', weight: FontWeight.bold, size: 20,),
                          SizedBox(
                            height: 100,
                            width: 500,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Card(
                                      color: ProjectColor().lightGrey,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: ProjectColor().darkGrey,
                                              borderRadius: const BorderRadius.all(Radius.circular(10))
                                            ),
                                            height: 50,
                                              width: 50,
                                              child: Icon(
                                            Icons.add,
                                            color: ProjectColor().white,
                                          )),
                                          const SizedBox(height: 5,),
                                          const MyText(data: 'Leg', weight: FontWeight.bold,)
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                          const SizedBox(height: 20,),
                          MyButton(onTap: (){}, text: 'Add to workout', color: ProjectColor().lightGrey)
                        ],
                      )
                    ],
                  ),
                ),
              );
            });
      },
      child: const Icon(Icons.add),
    );
  }
}
