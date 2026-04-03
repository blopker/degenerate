// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetIssuingPhysicalBundlesStatus {const GetIssuingPhysicalBundlesStatus._(this.value);

factory GetIssuingPhysicalBundlesStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'inactive' => inactive,
  'review' => review,
  _ => GetIssuingPhysicalBundlesStatus._(json),
}; }

static const GetIssuingPhysicalBundlesStatus active = GetIssuingPhysicalBundlesStatus._('active');

static const GetIssuingPhysicalBundlesStatus inactive = GetIssuingPhysicalBundlesStatus._('inactive');

static const GetIssuingPhysicalBundlesStatus review = GetIssuingPhysicalBundlesStatus._('review');

static const List<GetIssuingPhysicalBundlesStatus> values = [active, inactive, review];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetIssuingPhysicalBundlesStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetIssuingPhysicalBundlesStatus($value)'; } 
 }
