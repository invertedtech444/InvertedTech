import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_portfolio/view/intro/components/combine_subtitle.dart';

import '../../view model/responsive.dart';
import '../intro/components/description_text.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  _PrivacyPolicyScreenState createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  String privacyPolicyHtml = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Privacy Policy Guidelines for Play Store Apps</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        header {
            background-color: #4CAF50;
            padding: 20px;
            text-align: center;
            color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        header img {
            width: 100px;
            margin-bottom: 10px;
        }
        header h1 {
            margin: 0;
            font-size: 2.5em;
        }
        main {
            padding: 40px;
            max-width: 900px;
            margin: 20px auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: black;
            margin-top: 30px;
            font-size: 1.5em;
        }
        p, ul {
            font-size: 1.1em;
            line-height: 1.6;
            margin-bottom: 20px;
        }
        ul {
            padding-left: 20px;
        }
        li {
            margin-bottom: 10px;
        }
        footer {
            background-color: #040614;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 40px;
        }
        footer p {
            margin: 0;
            font-size: 0.9em;
        }
    </style>
</head>
<body>

    <main>
        <h2>1. Introduction</h2>
        <p>At Inverted Technology, we respect your privacy and are committed to protecting the personal information you share with us. This Privacy Policy outlines how our app collects, uses, and protects your information.</p>

        <h2>2. Information We Collect</h2>
        <p>We collect the following information:</p>
        <ul>
            <li><strong>Personal Information:</strong> Email addresses, location, or other details you may provide during app usage.</li>
            <li><strong>Non-Personal Information:</strong> Device information, usage statistics, and other anonymized data.</li>
        </ul>

        <h2>3. How We Use the Information</h2>
        <p>We use the collected data to:</p>
        <ul>
            <li>Improve our app functionality and user experience.</li>
            <li>Send notifications and updates.</li>
            <li>Respond to user queries and support requests.</li>
        </ul>

        <h2>4. How We Share the Information</h2>
        <p>We do not sell, trade, or rent your personal information to others. We may share data with trusted third-party services for the following purposes:</p>
        <ul>
            <li>App analytics to improve performance.</li>
            <li>Cloud services to store user data securely.</li>
        </ul>
		
        <h2>5. Legal Basis for Processing</h2>
        <p>We process your information under the following legal bases, as applicable:</p>
		<ul>
            <li>For specific data collection (e.g., marketing), where legally required and explicitly given.</li>
            <li>When necessary to comply with applicable laws and regulations.</li>
        </ul>
       <h2>6. Security of Your Information</h2>
        <p>We implement various security measures to maintain the safety of your personal information, including encryption and secure storage practices. However, please note that no method of transmission over the internet is completely secure.</p>

        <h2>7. Children’s Privacy</h2>
        <p>We do not knowingly collect personally identifiable information from children. If we become aware that we have inadvertently collected such data, we will take immediate steps to delete it.</p>

        <h2>8. Third-Party Links/Services</h2>
        <p>Our app may contain links to third-party websites or services. We are not responsible for the privacy practices of these third parties, and we encourage you to review their privacy policies.</p>

        <h2>9. User Rights</h2>
        <p>You have the right to:</p>
        <ul>
            <li>Request access to your personal information.</li>
            <li>Request the correction or deletion of your data.</li>
            <li>Opt-out of certain data collection practices.</li>
        </ul>

        <h2>10. Changes to this Privacy Policy</h2>
        <p>We reserve the right to update this Privacy Policy at any time. Any changes will be posted on this page, and we will notify you of significant updates via email or in-app notifications.</p>

        <h2>11. Advertising</h2>
        <p>Some of our apps and games may display advertisements from third-party ad networks. </p>
        <p>These ad networks may collect and use information about you to show you personalized ads. </p>
        <p>We do not share your personal information with these ad networks.</p>
		
		<h2>12. Contact Information</h2>
        <p>If you have any questions or concerns regarding this Privacy Policy, feel free to contact us at:</p>
        <p>Email: invertedtechofficial@gmail.com</p>
    </main>

    <footer>
        <p>&copy; 2024 Inverted Technology. All Rights Reserved.</p>
    </footer>
</body>
</html>
  ''';

  // @override
  // void initState() {
  //   super.initState();
  //   loadHtmlFromAsset();
  // }
  //
  // Future<void> loadHtmlFromAsset() async {
  //   String htmlString = await rootBundle.loadString('assets/privacypolicy.html');
  //   setState(() {
  //     privacyPolicyHtml = htmlString;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 20,bottom: 20),
              color: Color(0xFF040614),
                child: PrivacyPolicyText())),
            Html(
              data: privacyPolicyHtml,
            ),
          ],
        ) // Show a loader while loading
      ),
    );
  }
}
