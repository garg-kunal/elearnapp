import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroStudent extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: "Join a Class",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
          child: Image.asset("assets/images/demo.png"),
        ),
      ),
      PageViewModel(
        title: "Access Study Material",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
          child: Image.asset("assets/images/demo.png"),
        ),
      ),
      PageViewModel(
        title: "Take Exam",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
          child: Image.asset("assets/images/demo.png"),
        ),
      ),
      PageViewModel(
        title: "Engage in Classromm Discussion",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
          child: Image.asset("assets/images/demo.png"),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
      ),
      body: IntroductionScreen(
        pages: getPages(),
        onDone: () {
          // When done button is press
          print("hhelo from my side");
        },
        onSkip: () {
          // You can also override onSkip callback
        },
        showSkipButton: true,
        skip: const Text("Skip"),
        next: const Icon(Icons.arrow_forward),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            // activeColor: theme.accentColor,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    );
  }
}
