import 'package:flutter/material.dart';
import 'package:flutter_portofolio/models/Project.dart';
import 'package:flutter_portofolio/screens/home_screen/components/project_card.dart';
import 'package:flutter_portofolio/shared/shared.dart';

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
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.4,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
          ),
          itemCount: demo_projects.length,
          shrinkWrap: true,
          itemBuilder: (_, index) {
            return ProjectCard(
              project: demo_projects[index],
            );
          },
        ),
      ],
    );
  }
}
