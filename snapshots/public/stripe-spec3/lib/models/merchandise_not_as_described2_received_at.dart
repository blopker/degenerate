// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MerchandiseNotAsDescribed2ReceivedAtVariant2 {const MerchandiseNotAsDescribed2ReceivedAtVariant2._(this.value);

factory MerchandiseNotAsDescribed2ReceivedAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => MerchandiseNotAsDescribed2ReceivedAtVariant2._(json),
}; }

static const MerchandiseNotAsDescribed2ReceivedAtVariant2 $empty = MerchandiseNotAsDescribed2ReceivedAtVariant2._('');

static const List<MerchandiseNotAsDescribed2ReceivedAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MerchandiseNotAsDescribed2ReceivedAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MerchandiseNotAsDescribed2ReceivedAtVariant2($value)'; } 
 }
typedef MerchandiseNotAsDescribed2ReceivedAt = OneOf2<int,MerchandiseNotAsDescribed2ReceivedAtVariant2>;
