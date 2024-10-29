import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'dart:convert';

import 'package:flutter_webview_pro/webview_flutter.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  final String privacyPolicyHtml = """
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
            main {
                padding: 20px;
                max-width: 900px;
                margin: auto;
                background-color: white;
                border-radius: 8px;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            }
            h2, h3 {
                color: #000000;
                margin-top: 10px;
            }
            p, ul {
                font-size: 0.9em;
                line-height: 1.6;
                margin-bottom: 20px;
            }
            footer {
                background-color: #333;
                color: white;
                text-align: center;
                padding: 10px 0;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <main>
            <h2><b>Privacy Policy</b></h2>
            <h3>1. Introduction</h3>
            <p>At Inverted Technology, we respect your privacy and are committed to protecting the personal information you share with us. This Privacy Policy outlines how our app collects, uses, and protects your information.</p>
            <h3>2. Information We Collect</h3>
            <p>We collect the following information:</p>
            <ul>
                <li><strong>Personal Information:</strong> Email addresses, location, or other details you may provide during app usage.</li>
                <li><strong>Non-Personal Information:</strong> Device information, usage statistics, and other anonymized data.</li>
            </ul>
            <h3>3. How We Use the Information</h3>
            <p>We use the collected data to:</p>
            <ul>
                <li>Improve our app functionality and user experience.</li>
                <li>Send notifications and updates.</li>
                <li>Respond to user queries and support requests.</li>
            </ul>
            <h3>4. How We Share the Information</h3>
            <p>We do not sell, trade, or rent your personal information to others. We may share data with trusted third-party services for the following purposes:</p>
            <ul>
                <li>App analytics to improve performance.</li>
                <li>Cloud services to store user data securely.</li>
            </ul>
            <h3>5. Security of Your Information</h3>
            <p>We implement various security measures to maintain the safety of your personal information, including encryption and secure storage practices. However, please note that no method of transmission over the internet is completely secure.</p>
            <h3>6. Children’s Privacy</h3>
            <p>Our app is not intended for children under 13 years of age. We do not knowingly collect personally identifiable information from children. If we become aware that we have inadvertently collected such data, we will take immediate steps to delete it.</p>
            <h3>7. Third-Party Links/Services</h3>
            <p>Our app may contain links to third-party websites or services. We are not responsible for the privacy practices of these third parties, and we encourage you to review their privacy policies.</p>
            <h3>8. User Rights</h3>
            <p>You have the right to:</p>
            <ul>
                <li>Request access to your personal information.</li>
                <li>Request the correction or deletion of your data.</li>
                <li>Opt-out of certain data collection practices.</li>
            </ul>
            <h3>9. Changes to this Privacy Policy</h3>
            <p>We reserve the right to update this Privacy Policy at any time. Any changes will be posted on this page, and we will notify you of significant updates via email or in-app notifications.</p>
            <h3>10. Contact Information</h3>
            <p>If you have any questions or concerns regarding this Privacy Policy, feel free to contact us.</p>
        </main>
        <footer>
            <p>© 2024 Inverted Technology. All Rights Reserved.</p>
        </footer>
    </body>
    </html>
  """;

  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Html(
        data: privacyPolicyHtml,
            ),
      ),
    );
  }
}
