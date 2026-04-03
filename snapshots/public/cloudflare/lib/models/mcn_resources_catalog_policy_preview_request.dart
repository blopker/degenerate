// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class McnResourcesCatalogPolicyPreviewRequest {const McnResourcesCatalogPolicyPreviewRequest({required this.policy});

factory McnResourcesCatalogPolicyPreviewRequest.fromJson(Map<String, dynamic> json) { return McnResourcesCatalogPolicyPreviewRequest(
  policy: json['policy'] as String,
); }

final String policy;

Map<String, dynamic> toJson() { return {
  'policy': policy,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('policy') && json['policy'] is String; } 
McnResourcesCatalogPolicyPreviewRequest copyWith({String? policy}) { return McnResourcesCatalogPolicyPreviewRequest(
  policy: policy ?? this.policy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnResourcesCatalogPolicyPreviewRequest &&
          policy == other.policy; } 
@override int get hashCode { return policy.hashCode; } 
@override String toString() { return 'McnResourcesCatalogPolicyPreviewRequest(policy: $policy)'; } 
 }
