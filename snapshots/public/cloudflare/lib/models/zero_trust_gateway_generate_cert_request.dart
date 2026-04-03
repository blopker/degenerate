// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZeroTrustGatewayGenerateCertRequest {const ZeroTrustGatewayGenerateCertRequest({this.validityPeriodDays});

factory ZeroTrustGatewayGenerateCertRequest.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayGenerateCertRequest(
  validityPeriodDays: json['validity_period_days'] != null ? (json['validity_period_days'] as num).toInt() : null,
); }

/// Sets the certificate validity period in days (range: 1-10,950 days / ~30 years). Defaults to 1,825 days (5 years). **Important**: This field is only settable during the certificate creation.  Certificates becomes immutable after creation - use the `/activate` and `/deactivate` endpoints to manage certificate lifecycle.
final int? validityPeriodDays;

Map<String, dynamic> toJson() { return {
  'validity_period_days': ?validityPeriodDays,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'validity_period_days'}.contains(key)); } 
ZeroTrustGatewayGenerateCertRequest copyWith({int Function()? validityPeriodDays}) { return ZeroTrustGatewayGenerateCertRequest(
  validityPeriodDays: validityPeriodDays != null ? validityPeriodDays() : this.validityPeriodDays,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayGenerateCertRequest &&
          validityPeriodDays == other.validityPeriodDays; } 
@override int get hashCode { return validityPeriodDays.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayGenerateCertRequest(validityPeriodDays: $validityPeriodDays)'; } 
 }
