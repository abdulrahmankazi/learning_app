import 'package:flutter/material.dart';
import 'package:learning_app/util/colors.dart';
import 'package:learning_app/util/design/swipeable_button.dart';

import 'tabs/lesson_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenBGColor,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: SwipeableButton(),
      ),
      appBar: AppBar(
        title: const Text(
          "Introduction to ChatGPT",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: const Icon(Icons.arrow_back),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              child: Text(
                'Summary',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Lessons',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Certificate',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: [
            const Text("1"),
            LessonsTabWidget(),
            const Text("3"),
          ],
        ),
      ),
    );
  }
}
