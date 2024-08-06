import 'package:free_books/Core/Functions/show_message.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl({required String url}) async {
  Uri uri = Uri.parse(url);

  bool canLaunch = await canLaunchUrl(uri);
  try {
    if (canLaunch) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      showMessage(text: 'Could not launch $url');
    }
  } on Exception catch (e) {
    showMessage(
      text: e.toString(),
    );
  }
}
