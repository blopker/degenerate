// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountCapabilitiesCapabilityRequest {const PostAccountsAccountCapabilitiesCapabilityRequest({this.expand, this.requested, });

factory PostAccountsAccountCapabilitiesCapabilityRequest.fromJson(Map<String, dynamic> json) { return PostAccountsAccountCapabilitiesCapabilityRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  requested: json['requested'] as bool?,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// To request a new capability for an account, pass true. There can be a delay before the requested capability becomes active. If the capability has any activation requirements, the response includes them in the `requirements` arrays.
/// 
/// If a capability isn't permanent, you can remove it from the account by passing false. Some capabilities are permanent after they've been requested. Attempting to remove a permanent capability returns an error.
final bool? requested;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountCapabilitiesCapabilityRequest copyWith({List<String> Function()? expand, bool Function()? requested, }) { return PostAccountsAccountCapabilitiesCapabilityRequest(
  expand: expand != null ? expand() : this.expand,
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountCapabilitiesCapabilityRequest &&
          listEquals(expand, other.expand) &&
          requested == other.requested; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), requested); } 
@override String toString() { return 'PostAccountsAccountCapabilitiesCapabilityRequest(expand: $expand, requested: $requested)'; } 
 }
