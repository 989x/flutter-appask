
class Results {
  int id;
  String asking;
  String image;

  String profile;
  String name;
  String time;

  Results({
    required this.id,
    required this.asking,
    required this.image,

    required this.profile,
    required this.name,
    required this.time,
  });

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      id: json['id'] as int, 
      asking: json['asking'] as String,
      image: json['image'] as String,

      profile: json['profile'] as String,
      name: json['name'] as String,
      time: json['time'] as String,
    );
  }
}
