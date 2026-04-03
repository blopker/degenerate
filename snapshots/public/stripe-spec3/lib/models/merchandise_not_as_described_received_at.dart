// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MerchandiseNotAsDescribedReceivedAtVariant2 {const MerchandiseNotAsDescribedReceivedAtVariant2._(this.value);

factory MerchandiseNotAsDescribedReceivedAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => MerchandiseNotAsDescribedReceivedAtVariant2._(json),
}; }

static const MerchandiseNotAsDescribedReceivedAtVariant2 $empty = MerchandiseNotAsDescribedReceivedAtVariant2._('');

static const List<MerchandiseNotAsDescribedReceivedAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MerchandiseNotAsDescribedReceivedAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MerchandiseNotAsDescribedReceivedAtVariant2($value)'; } 
 }
typedef MerchandiseNotAsDescribedReceivedAt = OneOf2<int,MerchandiseNotAsDescribedReceivedAtVariant2>;
