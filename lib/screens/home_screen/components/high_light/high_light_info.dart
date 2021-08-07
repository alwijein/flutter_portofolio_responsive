part of 'high_light.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: ResponsiveConfig.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      value: 75,
                      label: '+',
                      title: 'Subsciber',
                    ),
                    HighLight(
                      value: 27,
                      label: '+',
                      title: 'Git Repository',
                    ),
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      value: 5,
                      label: '+',
                      title: 'Project',
                    ),
                    HighLight(
                      value: 25,
                      label: '+',
                      title: 'Assets 3D',
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  value: 75,
                  label: '+',
                  title: 'Subsciber',
                ),
                HighLight(
                  value: 27,
                  label: '+',
                  title: 'Git Repository',
                ),
                HighLight(
                  value: 5,
                  label: '+',
                  title: 'Project',
                ),
                HighLight(
                  value: 25,
                  label: '+',
                  title: 'Assets 3D',
                ),
              ],
            ),
    );
  }
}
