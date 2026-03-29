// GENERATED CODE - DO NOT MODIFY BY HAND

final class AcceptStickEvent {
  const AcceptStickEvent({this.type = 'accept_stick'});

  factory AcceptStickEvent.fromJson(Map<String, dynamic> json) {
    return AcceptStickEvent(
      type: json.containsKey('type') ? json['type'] as String : 'accept_stick',
    );
  }

  final String type;

  Map<String, dynamic> toJson() {
    return {'type': type};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.keys.any((key) => const {'type'}.contains(key));
  }

  AcceptStickEvent copyWith({String Function()? type}) {
    return AcceptStickEvent(type: type != null ? type() : this.type);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is AcceptStickEvent && type == other.type;
  }

  @override
  int get hashCode {
    return type.hashCode;
  }

  @override
  String toString() {
    return 'AcceptStickEvent(type: $type)';
  }
}
