// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Enum for access_application_policy resource type.
@immutable final class ResourceTaggingZoneResourceTypeAccessApplicationPolicyEnum {const ResourceTaggingZoneResourceTypeAccessApplicationPolicyEnum._(this.value);

factory ResourceTaggingZoneResourceTypeAccessApplicationPolicyEnum.fromJson(String json) { return switch (json) {
  'access_application_policy' => accessApplicationPolicy,
  _ => ResourceTaggingZoneResourceTypeAccessApplicationPolicyEnum._(json),
}; }

static const ResourceTaggingZoneResourceTypeAccessApplicationPolicyEnum accessApplicationPolicy = ResourceTaggingZoneResourceTypeAccessApplicationPolicyEnum._('access_application_policy');

static const List<ResourceTaggingZoneResourceTypeAccessApplicationPolicyEnum> values = [accessApplicationPolicy];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResourceTaggingZoneResourceTypeAccessApplicationPolicyEnum && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResourceTaggingZoneResourceTypeAccessApplicationPolicyEnum($value)'; } 
 }
