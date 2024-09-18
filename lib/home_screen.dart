import 'package:flutter/material.dart';
import 'package:timeline_widget/components/timeline_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF352F44),
      body: SafeArea(
        minimum:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: timelineList.length,
              itemBuilder: (context, index) => timelineList[index],
            ),
          ),
        ),
      ),
    );
  }
}
