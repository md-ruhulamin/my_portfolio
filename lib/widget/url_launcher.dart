import 'package:my_portfolio/constant/path.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenUrl{

Future<void> LaunchUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}

launchEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
    queryParameters: {
      'subject': 'Portfolio Inquiry',
      'body': 'Hello, I am reaching out to you regarding your portfolio.',
    },
  );

  if (await canLaunchUrl(Uri.parse(emailLaunchUri.toString()))) {
    await launchUrl((Uri.parse(emailLaunchUri.toString())));
  } else {
    throw 'Could not launch email';
  }
}


}