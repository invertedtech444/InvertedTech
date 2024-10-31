import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../view model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Responsive(
            desktop: AnimatedSubtitleText(
                start: 30, end: 40, text: 'Facial Recognition '),
            largeMobile: AnimatedSubtitleText(
                start: 30, end: 25, text: 'Facial Recognition '),
            mobile: AnimatedSubtitleText(
                start: 25, end: 20, text: 'Facial Recognition '),
            tablet: AnimatedSubtitleText(
                start: 40, end: 30, text: 'Facial Recognition '),
          ),
          (kIsWeb && Responsive.isLargeMobile(context)
              ? const Responsive(
            desktop: AnimatedSubtitleText(
                start: 30,
                end: 40,
                text: 'Application ',
                gradient: true),
            largeMobile: AnimatedSubtitleText(
                start: 30,
                end: 25,
                text: 'Application ',
                gradient: true),
            mobile: AnimatedSubtitleText(
                start: 25,
                end: 20,
                text: 'Application ',
                gradient: true),
            tablet: AnimatedSubtitleText(
                start: 40,
                end: 30,
                text: 'Application ',
                gradient: true),
          )
              : ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(colors: [
                Colors.blue,
                Colors.pink,
              ]).createShader(bounds);
            },
            child: const Responsive(
              desktop: AnimatedSubtitleText(
                  start: 30,
                  end: 40,
                  text: 'Application ',
                  gradient: false),
              largeMobile: AnimatedSubtitleText(
                  start: 30,
                  end: 25,
                  text: 'Application ',
                  gradient: false),
              mobile: AnimatedSubtitleText(
                  start: 25,
                  end: 20,
                  text: 'Application ',
                  gradient: true),
              tablet: AnimatedSubtitleText(
                  start: 40,
                  end: 30,
                  text: 'Application ',
                  gradient: false),
            ),
          ))
        ],
      ),
    );
  }
}


class PrivacyPolicyText extends StatelessWidget {
  const PrivacyPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return  ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(colors: [
          Colors.blue,
          Colors.pink,
        ]).createShader(bounds);
      },
      child: const Responsive(
        desktop: AnimatedPrivacyPolicyText(
          start: 30, end: 40, text: 'Privacy Policy Guidelines',gradient: false, fontSize: 85,),
        largeMobile: AnimatedPrivacyPolicyText(
          start: 30, end: 25, text: 'Privacy Policy Guidelines',gradient: false,fontSize: 85,),
        mobile: AnimatedPrivacyPolicyText(
          start: 25, end: 20, text: 'Privacy Policy Guidelines',gradient: false,fontSize: 85,),
        tablet: AnimatedPrivacyPolicyText(
          start: 40, end: 30, text: 'Privacy Policy Guidelines',gradient: false,fontSize: 85,),
      ),
    );
  }
}
