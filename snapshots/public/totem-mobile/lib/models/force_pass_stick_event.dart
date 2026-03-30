// GENERATED CODE - DO NOT MODIFY BY HAND

/// Keeper forces the current speaker to pass the stick.
/// The next speaker won't have a chance to accept — the stick will be passed immediately.
final class ForcePassStickEvent {
  const ForcePassStickEvent({this.type = 'force_pass_stick'});

  factory ForcePassStickEvent.fromJson(Map<String, dynamic> json) {
    return ForcePassStickEvent(
      type: json.containsKey('type')
          ? json['type'] as String
          : 'force_pass_stick',
    );
  }

  final String type;

  Map<String, dynamic> toJson() {
    return {'type': type};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.keys.any((key) => const {'type'}.contains(key));
  }

  ForcePassStickEvent copyWith({String Function()? type}) {
    return ForcePassStickEvent(type: type != null ? type() : this.type);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ForcePassStickEvent && type == other.type;
  }

  @override
  int get hashCode {
    return type.hashCode;
  }

  @override
  String toString() {
    return 'ForcePassStickEvent(type: $type)';
  }
}
