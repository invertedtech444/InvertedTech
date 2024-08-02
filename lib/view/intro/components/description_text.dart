import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            '   - Real-time detection and recognition of registered users.\n   - Compares captured facial data with stored records to identify individuals.\n   - Supports various lighting conditions and environments for robust recognition.\n   - Provides feedback to users during the recognition process to ensure accuracy.\n   - Utilizes advanced algorithms to handle variations in facial expressions and poses.',
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
          ),
        );
      },
    );
  }
}