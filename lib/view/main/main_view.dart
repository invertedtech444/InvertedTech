import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/main/components/navigation_bar.dart';
import '../../view model/responsive.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MainView extends StatelessWidget {
   const MainView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
          Image.asset(
          'assets/images/img_ai_new.PNG',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
            ).animate().fadeIn(duration: 300.ms),
            Column(
              children: [

                Expanded(
                  flex: 9,
                  child: PageView(
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller,
                    children: [
                      ...pages
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}








