// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_account_sessions_request_components_financial_account_features.dart';@immutable final class PostAccountSessionsRequestComponentsFinancialAccount {const PostAccountSessionsRequestComponentsFinancialAccount({required this.enabled, this.features, });

factory PostAccountSessionsRequestComponentsFinancialAccount.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsFinancialAccount(
  enabled: json['enabled'] as bool,
  features: json['features'] != null ? PostAccountSessionsRequestComponentsFinancialAccountFeatures.fromJson(json['features'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostAccountSessionsRequestComponentsFinancialAccountFeatures? features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (features != null) 'features': features?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostAccountSessionsRequestComponentsFinancialAccount copyWith({bool? enabled, PostAccountSessionsRequestComponentsFinancialAccountFeatures Function()? features, }) { return PostAccountSessionsRequestComponentsFinancialAccount(
  enabled: enabled ?? this.enabled,
  features: features != null ? features() : this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsFinancialAccount &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsFinancialAccount(enabled: $enabled, features: $features)'; } 
 }
