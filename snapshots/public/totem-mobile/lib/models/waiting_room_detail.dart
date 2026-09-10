// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class WaitingRoomDetail {
  const WaitingRoomDetail({this.type});

  factory WaitingRoomDetail.fromJson(Map<String, dynamic> json) {
    return WaitingRoomDetail(type: json['type'] as String?);
  }

  final String? type;

  /// The value with the schema default applied when absent.
  String get typeOrDefault {
    return type ?? 'waiting_room';
  }

  Map<String, dynamic> toJson() {
    return {'type': ?type};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.keys.any((key) => const {'type'}.contains(key));
  }

  WaitingRoomDetail copyWith({String? Function()? type}) {
    return WaitingRoomDetail(type: type != null ? type() : this.type);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is WaitingRoomDetail && type == other.type;
  }

  @override
  int get hashCode {
    return type.hashCode;
  }

  @override
  String toString() {
    return 'WaitingRoomDetail(type: $type)';
  }
}
