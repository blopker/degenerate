// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A refusal from the model.
@immutable final class RefusalContent {const RefusalContent({required this.refusal, this.type = 'refusal', });

factory RefusalContent.fromJson(Map<String, dynamic> json) { return RefusalContent(
  type: json['type'] as String,
  refusal: json['refusal'] as String,
); }

/// The type of the refusal. Always `refusal`.
final String type;

/// The refusal explanation from the model.
final String refusal;

Map<String, dynamic> toJson() { return {
  'type': type,
  'refusal': refusal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('refusal') && json['refusal'] is String; } 
RefusalContent copyWith({String? type, String? refusal, }) { return RefusalContent(
  type: type ?? this.type,
  refusal: refusal ?? this.refusal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RefusalContent &&
          type == other.type &&
          refusal == other.refusal; } 
@override int get hashCode { return Object.hash(type, refusal); } 
@override String toString() { return 'RefusalContent(type: $type, refusal: $refusal)'; } 
 }
