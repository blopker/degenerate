// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies which event to cancel.
@immutable final class PostBillingMeterEventAdjustmentsRequestCancel {const PostBillingMeterEventAdjustmentsRequestCancel({this.identifier});

factory PostBillingMeterEventAdjustmentsRequestCancel.fromJson(Map<String, dynamic> json) { return PostBillingMeterEventAdjustmentsRequestCancel(
  identifier: json['identifier'] as String?,
); }

final String? identifier;

Map<String, dynamic> toJson() { return {
  'identifier': ?identifier,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'identifier'}.contains(key)); } 
PostBillingMeterEventAdjustmentsRequestCancel copyWith({String Function()? identifier}) { return PostBillingMeterEventAdjustmentsRequestCancel(
  identifier: identifier != null ? identifier() : this.identifier,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingMeterEventAdjustmentsRequestCancel &&
          identifier == other.identifier; } 
@override int get hashCode { return identifier.hashCode; } 
@override String toString() { return 'PostBillingMeterEventAdjustmentsRequestCancel(identifier: $identifier)'; } 
 }
