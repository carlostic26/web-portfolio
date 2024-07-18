import 'dart:convert';

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

     factory ProjectUtils.fromJson(Map<String, dynamic> json) => ProjectUtils(
        subtitle: json["subtitle"],
        image: json["image"],
        title: json["title"],
        androidLink: json["androidLink"],
        iosLink: json["iosLink"],
        webLink: json["webLink"],
        githubLink: json["githubLink"],
    );

    Map<String, dynamic> toJson() => {
        "subtitle": subtitle,
        "image": image,
        "title": title,
        "androidLink": androidLink,
        "iosLink": iosLink,
        "webLink": webLink,
        "githubLink": githubLink,
    };
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

//METHODS TO GET LIST

List<ProjectUtils> projectUtilsFromJson(String str) => List<ProjectUtils>.from(json.decode(str).map((x) => ProjectUtils.fromJson(x)));

String projectUtilsToJson(List<ProjectUtils> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

