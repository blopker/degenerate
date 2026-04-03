// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customer_sessions_request_components_mobile_payment_element_features.dart';@immutable final class PostCustomerSessionsRequestComponentsMobilePaymentElement {const PostCustomerSessionsRequestComponentsMobilePaymentElement({required this.enabled, this.features, });

factory PostCustomerSessionsRequestComponentsMobilePaymentElement.fromJson(Map<String, dynamic> json) { return PostCustomerSessionsRequestComponentsMobilePaymentElement(
  enabled: json['enabled'] as bool,
  features: json['features'] != null ? PostCustomerSessionsRequestComponentsMobilePaymentElementFeatures.fromJson(json['features'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostCustomerSessionsRequestComponentsMobilePaymentElementFeatures? features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (features != null) 'features': features?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostCustomerSessionsRequestComponentsMobilePaymentElement copyWith({bool? enabled, PostCustomerSessionsRequestComponentsMobilePaymentElementFeatures Function()? features, }) { return PostCustomerSessionsRequestComponentsMobilePaymentElement(
  enabled: enabled ?? this.enabled,
  features: features != null ? features() : this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomerSessionsRequestComponentsMobilePaymentElement &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'PostCustomerSessionsRequestComponentsMobilePaymentElement(enabled: $enabled, features: $features)'; } 
 }
