part of 'my_projects.dart';

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
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
    );
  }
}
