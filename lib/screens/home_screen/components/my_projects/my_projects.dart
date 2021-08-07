import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/config/config.dart';
import 'package:flutter_portofolio/models/Project.dart';
import 'package:flutter_portofolio/shared/shared.dart';

part 'project_card.dart';
part 'project_grid_view.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: defaultPadding / 2),
        ResponsiveConfig(
          mobile: ProjectGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          tablet: ProjectGridView(
            childAspectRatio: 1.1,
          ),
          mobileLarge: ProjectGridView(
            crossAxisCount: 2,
          ),
          desktop: ProjectGridView(),
        ),
      ],
    );
  }
}
