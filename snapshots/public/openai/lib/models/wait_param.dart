// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A wait action.
@immutable final class WaitParam {const WaitParam({this.type = 'wait'});

factory WaitParam.fromJson(Map<String, dynamic> json) { return WaitParam(
  type: json['type'] as String,
); }

/// Specifies the event type. For a wait action, this property is always set to `wait`.
final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
WaitParam copyWith({String? type}) { return WaitParam(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitParam &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'WaitParam(type: $type)'; } 
 }
