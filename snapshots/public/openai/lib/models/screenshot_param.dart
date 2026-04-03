// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A screenshot action.
@immutable final class ScreenshotParam {const ScreenshotParam({this.type = 'screenshot'});

factory ScreenshotParam.fromJson(Map<String, dynamic> json) { return ScreenshotParam(
  type: json['type'] as String,
); }

/// Specifies the event type. For a screenshot action, this property is always set to `screenshot`.
final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
ScreenshotParam copyWith({String? type}) { return ScreenshotParam(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ScreenshotParam &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'ScreenshotParam(type: $type)'; } 
 }
