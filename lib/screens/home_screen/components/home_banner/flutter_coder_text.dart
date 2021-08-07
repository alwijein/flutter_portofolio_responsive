part of 'home_banner.dart';

class FlutterCoderText extends StatelessWidget {
  const FlutterCoderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
            text: 'flutter',
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(
            text: '>',
          )
        ],
      ),
    );
  }
}
