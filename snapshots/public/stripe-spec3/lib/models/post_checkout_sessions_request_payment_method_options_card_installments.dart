// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsCardInstallments {const PostCheckoutSessionsRequestPaymentMethodOptionsCardInstallments({this.enabled});

factory PostCheckoutSessionsRequestPaymentMethodOptionsCardInstallments.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsCardInstallments(
  enabled: json['enabled'] as bool?,
); }

final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsCardInstallments copyWith({bool Function()? enabled}) { return PostCheckoutSessionsRequestPaymentMethodOptionsCardInstallments(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsCardInstallments &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsCardInstallments(enabled: $enabled)'; } 
 }
