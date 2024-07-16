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
  ProjectUtils(image: 'image', title: 'title', subtitle: ''),
  ProjectUtils(image: 'image', title: 'title', subtitle: ''),
  ProjectUtils(image: 'image', title: 'title', subtitle: ''),
];

//WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(image: 'image', title: 'title', subtitle: ''),
  ProjectUtils(image: 'image', title: 'title', subtitle: ''),
  ProjectUtils(image: 'image', title: 'title', subtitle: ''),
];
