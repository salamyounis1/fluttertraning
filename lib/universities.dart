class universities {
  // "domains": ["marywood.edu"], "alpha_two_code": "US", "country": "United States",
  //  "web_pages": ["http://www.marywood.edu"],
  //   "name": "Marywood University", "state-province": null},
  List? domains;
  String? alpha_two_code;
  String? country;
  List? web_pages;
  String? name;
  String? state_province;
  universities.fromMap(Map<String, dynamic> map) {
    domains = map['domains'];
    alpha_two_code = map['alpha_two_code'];
    country = map['country'];
    web_pages = map['web_pages'];
    name = map['name'];
    state_province = map['state-province'];
  }
}
