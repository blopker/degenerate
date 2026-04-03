// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_credit_grants_request_applicability_config_scope.dart';/// Configuration specifying what this credit grant applies to. We currently only support `metered` prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them.
@immutable final class PostBillingCreditGrantsRequestApplicabilityConfig {const PostBillingCreditGrantsRequestApplicabilityConfig({required this.scope});

factory PostBillingCreditGrantsRequestApplicabilityConfig.fromJson(Map<String, dynamic> json) { return PostBillingCreditGrantsRequestApplicabilityConfig(
  scope: PostBillingCreditGrantsRequestApplicabilityConfigScope.fromJson(json['scope'] as Map<String, dynamic>),
); }

final PostBillingCreditGrantsRequestApplicabilityConfigScope scope;

Map<String, dynamic> toJson() { return {
  'scope': scope.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('scope'); } 
PostBillingCreditGrantsRequestApplicabilityConfig copyWith({PostBillingCreditGrantsRequestApplicabilityConfigScope? scope}) { return PostBillingCreditGrantsRequestApplicabilityConfig(
  scope: scope ?? this.scope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingCreditGrantsRequestApplicabilityConfig &&
          scope == other.scope; } 
@override int get hashCode { return scope.hashCode; } 
@override String toString() { return 'PostBillingCreditGrantsRequestApplicabilityConfig(scope: $scope)'; } 
 }
