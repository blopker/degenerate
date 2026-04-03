// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bundle_custom_scan_payload.dart';@immutable final class WafContentScanningAddCustomScanExpressionsRequest {const WafContentScanningAddCustomScanExpressionsRequest({required this.payload});

factory WafContentScanningAddCustomScanExpressionsRequest.fromJson(Map<String, dynamic> json) { return WafContentScanningAddCustomScanExpressionsRequest(
  payload: BundleCustomScanPayload.fromJson(json['payload'] as String),
); }

/// Defines the ruleset expression to use in matching content objects.
final BundleCustomScanPayload payload;

Map<String, dynamic> toJson() { return {
  'payload': payload.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payload'); } 
WafContentScanningAddCustomScanExpressionsRequest copyWith({BundleCustomScanPayload? payload}) { return WafContentScanningAddCustomScanExpressionsRequest(
  payload: payload ?? this.payload,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafContentScanningAddCustomScanExpressionsRequest &&
          payload == other.payload; } 
@override int get hashCode { return payload.hashCode; } 
@override String toString() { return 'WafContentScanningAddCustomScanExpressionsRequest(payload: $payload)'; } 
 }
