class ProjectorUnsplashModel {
  final name;
  final raw;
  final alt_description;

  ProjectorUnsplashModel({this.name, this.raw, this.alt_description});

  factory ProjectorUnsplashModel.fromJson(Map<String, dynamic> map) {
    return ProjectorUnsplashModel(
      name: map['user']['name'],
      raw: map['urls']['raw'] as String,
      alt_description: map['alt_description'],
    );
  }
}