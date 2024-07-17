class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? githubLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.githubLink,
  });
}

//HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
      image: 'assets/projects/app_playstore_1.png',
      title: 'Calculator',
      subtitle: '...'),
  ProjectUtils(
      image: 'assets/projects/app_playstore_1.png',
      title: 'Screen Fix',
      subtitle: '...'),
  ProjectUtils(
      image: 'assets/projects/app_playstore_1.png',
      title: 'Bodega',
      subtitle: '...'),
];

//WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
      image: 'assets/projects/taskflow_github.png',
      title: 'TaskFlow',
      subtitle:
          "Mobile app that manages tasks for Flutter developers in the 'Creciendo con Flutter' study group.",
      githubLink: '//https://github.com/eliasbest07/creciendo-con-flutter/',
      androidLink: ''),
  ProjectUtils(
      image: 'assets/projects/app_playstore_1.png',
      title: 'App Example',
      subtitle: 'This is an app example in playstore.',
      androidLink: ''),
  ProjectUtils(
      image: 'assets/projects/app_playstore_1.png',
      title: 'Red Social',
      subtitle: 'I am the CEO of Instragram 8)'),
];
