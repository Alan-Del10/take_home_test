class Links {
  final String self;
  final String short;

  Links({this.self, this.short});

  factory Links.fromJson(Map<String, dynamic> json) {
    return Links(
      self: json['self'],
      short: json['short'],
    );
  }

  @override
  String toString() {
    return '${this.self} ${this.short}';
  }
}