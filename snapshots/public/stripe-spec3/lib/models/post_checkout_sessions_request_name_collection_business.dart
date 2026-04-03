// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestNameCollectionBusiness {const PostCheckoutSessionsRequestNameCollectionBusiness({required this.enabled, this.optional, });

factory PostCheckoutSessionsRequestNameCollectionBusiness.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestNameCollectionBusiness(
  enabled: json['enabled'] as bool,
  optional: json['optional'] as bool?,
); }

final bool enabled;

final bool? optional;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'optional': ?optional,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostCheckoutSessionsRequestNameCollectionBusiness copyWith({bool? enabled, bool Function()? optional, }) { return PostCheckoutSessionsRequestNameCollectionBusiness(
  enabled: enabled ?? this.enabled,
  optional: optional != null ? optional() : this.optional,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestNameCollectionBusiness &&
          enabled == other.enabled &&
          optional == other.optional; } 
@override int get hashCode { return Object.hash(enabled, optional); } 
@override String toString() { return 'PostCheckoutSessionsRequestNameCollectionBusiness(enabled: $enabled, optional: $optional)'; } 
 }
