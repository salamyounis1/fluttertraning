class source {
  int? id;
  String? name;
  source.frommap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }
}
