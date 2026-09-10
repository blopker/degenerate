// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_managed_transforms_request_managed_request_headers.dart';import 'rulesets_managed_transforms_request_managed_response_headers.dart';/// A Managed Transforms object.
@immutable final class RulesetsManagedTransformsRequest {const RulesetsManagedTransformsRequest({required this.managedRequestHeaders, required this.managedResponseHeaders, });

factory RulesetsManagedTransformsRequest.fromJson(Map<String, dynamic> json) {return RulesetsManagedTransformsRequest(
  managedRequestHeaders: (json['managed_request_headers'] as List<dynamic>).map((e) => RulesetsManagedTransformsRequestManagedRequestHeaders.fromJson(e as Map<String, dynamic>)).toList(),
  managedResponseHeaders: (json['managed_response_headers'] as List<dynamic>).map((e) => RulesetsManagedTransformsRequestManagedResponseHeaders.fromJson(e as Map<String, dynamic>)).toList(),
);}

/// The list of Managed Request Transforms.
final List<RulesetsManagedTransformsRequestManagedRequestHeaders> managedRequestHeaders;

/// The list of Managed Response Transforms.
final List<RulesetsManagedTransformsRequestManagedResponseHeaders> managedResponseHeaders;

Map<String, dynamic> toJson() {return {
  'managed_request_headers': managedRequestHeaders.map((e) => e.toJson()).toList(),
  'managed_response_headers': managedResponseHeaders.map((e) => e.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('managed_request_headers') &&
      json.containsKey('managed_response_headers');}
RulesetsManagedTransformsRequest copyWith({List<RulesetsManagedTransformsRequestManagedRequestHeaders>? managedRequestHeaders, List<RulesetsManagedTransformsRequestManagedResponseHeaders>? managedResponseHeaders, }) {return RulesetsManagedTransformsRequest(
  managedRequestHeaders: managedRequestHeaders ?? this.managedRequestHeaders,
  managedResponseHeaders: managedResponseHeaders ?? this.managedResponseHeaders,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is RulesetsManagedTransformsRequest &&
          listEquals(managedRequestHeaders, other.managedRequestHeaders) &&
          listEquals(managedResponseHeaders, other.managedResponseHeaders);}
@override int get hashCode {return Object.hash(Object.hashAll(managedRequestHeaders), Object.hashAll(managedResponseHeaders));}
@override String toString() {return 'RulesetsManagedTransformsRequest(managedRequestHeaders: $managedRequestHeaders, managedResponseHeaders: $managedResponseHeaders)';}
}
