// GENERATED CODE - DO NOT MODIFY BY HAND

final class StartRoomEvent {
  const StartRoomEvent({this.type = 'start_room'});

  factory StartRoomEvent.fromJson(Map<String, dynamic> json) {
    return StartRoomEvent(
      type: json.containsKey('type') ? json['type'] as String : 'start_room',
    );
  }

  final String type;

  Map<String, dynamic> toJson() {
    return {'type': type};
  }

  static bool canParse(Map<String, dynamic> json) {
    return true;
  }

  StartRoomEvent copyWith({String Function()? type}) {
    return StartRoomEvent(type: type != null ? type() : this.type);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is StartRoomEvent && type == other.type;
  }

  @override
  int get hashCode {
    return type.hashCode;
  }

  @override
  String toString() {
    return 'StartRoomEvent(type: $type)';
  }
}
