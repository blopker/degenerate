// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class MerchandiseNotAsDescribed2ReturnedAtVariant2 {const MerchandiseNotAsDescribed2ReturnedAtVariant2._(this.value);

factory MerchandiseNotAsDescribed2ReturnedAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => MerchandiseNotAsDescribed2ReturnedAtVariant2._(json),
}; }

static const MerchandiseNotAsDescribed2ReturnedAtVariant2 $empty = MerchandiseNotAsDescribed2ReturnedAtVariant2._('');

static const List<MerchandiseNotAsDescribed2ReturnedAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MerchandiseNotAsDescribed2ReturnedAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MerchandiseNotAsDescribed2ReturnedAtVariant2($value)'; } 
 }
typedef MerchandiseNotAsDescribed2ReturnedAt = OneOf2<int,MerchandiseNotAsDescribed2ReturnedAtVariant2>;