import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:working_reading/i18n/strings.dart';

void displayUpdateDialog({required BuildContext context}) {
  showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(
            updateAvailableMessage,
          ),
          actions: [
            TextButton(
              onPressed: () async {
                final url = Uri.parse(
                  'https://apps.apple.com/app/working-reading/id6448203316 ',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
              child: Text(okLabel),
            ),
          ],
        );
      });
}
