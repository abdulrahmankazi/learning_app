import 'package:flutter/material.dart';
import 'package:learning_app/util/design/dashed_line.dart';
import '../../util/colors.dart';

class LessonsTabWidget extends StatelessWidget {
  final List<String> textLabel = [
    'What is Generative Al',
    'Fine-tuning ChatGPT',
    'Advanced Features',
    'Advanced Features',
    'Advanced Features',
    'Advanced Features',
  ];

  LessonsTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 8.0,
      ),
      child: ListView.builder(
        itemCount: textLabel.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: index == 1
                    ? const GettingStartedWidget()
                    : LessonItemContent(
                        title: textLabel[index],
                        index: '${index + 1}',
                      ),
              ),
              if (index != textLabel.length - 1)
                Container(
                  width: 2,
                  height: 40,
                  color: index == 0 ? Colors.green : Colors.transparent,
                  child: index == 0
                      ? null
                      : CustomPaint(
                          painter: DashedLinePainter(),
                        ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class LessonItemContent extends StatelessWidget {
  final String title;
  final String index;

  const LessonItemContent({
    required this.title,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 0,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
      ),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 1.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          index == '2'
              ? const GettingStartedWidget()
              : Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: customGrayColor,
                  ),
                  child: Text(
                    index,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: inactiveColor,
                      fontSize: 16,
                    ),
                  ),
                ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: inactiveColor,
              fontSize: 18,
            ),
          ),
          Icon(
            index == '1' ? Icons.check_circle : Icons.lock_outline_sharp,
            color: index == '1' ? Colors.green.shade300 : inactiveColor,
            size: 24,
          ),
        ],
      ),
    );
  }
}

class GettingStartedWidget extends StatelessWidget {
  const GettingStartedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: currentCourseBgColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 0,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 1.0,
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Getting Started',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text(
                'Engage in unlimited Al conversations without restrictions.'),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 2.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      // color: Colors.red,
                      width: 0.2,
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      Text(
                        'Start Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 2.0,
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '5 mins',
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    // border: Border.all(
                    // color: Colors.red,
                    // width: 0.2,
                    // ),
                    color: customGrayColor,
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
