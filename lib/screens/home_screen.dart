import 'package:flutter/material.dart';
import 'package:onboarding/screens/screens.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              Intro1Screen(),
              Intro2Screen(),
              Intro3Screen(),
            ],
          ),
          Container(
            alignment: const Alignment(0, .75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    _controller.jumpToPage(2);
                  },
                  icon: Icon(Icons.skip_next_outlined,
                      color: Colors.black, size: 36),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                ),
                onLastPage
                    ? IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'HomePageCars');
                        },
                        icon: Icon(Icons.done, color: Colors.black, size: 36),
                      )
                    : IconButton(
                        onPressed: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInCubic,
                          );
                        },
                        icon: Icon(Icons.navigate_next_outlined,
                            color: Colors.black, size: 36),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
