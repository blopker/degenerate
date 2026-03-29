// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RealtimeResponseCreateParamsConversationVariant2 {const RealtimeResponseCreateParamsConversationVariant2._(this.value);

factory RealtimeResponseCreateParamsConversationVariant2.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'none' => none,
  _ => RealtimeResponseCreateParamsConversationVariant2._(json),
}; }

static const RealtimeResponseCreateParamsConversationVariant2 auto = RealtimeResponseCreateParamsConversationVariant2._('auto');

static const RealtimeResponseCreateParamsConversationVariant2 none = RealtimeResponseCreateParamsConversationVariant2._('none');

static const List<RealtimeResponseCreateParamsConversationVariant2> values = [auto, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeResponseCreateParamsConversationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeResponseCreateParamsConversationVariant2($value)'; } 
 }
typedef RealtimeResponseCreateParamsConversation = OneOf2<String,RealtimeResponseCreateParamsConversationVariant2>;