// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class RefundDestinationDetailsPaypal {const RefundDestinationDetailsPaypal({this.networkDeclineCode = const Omittable.absent()});

factory RefundDestinationDetailsPaypal.fromJson(Map<String, dynamic> json) { return RefundDestinationDetailsPaypal(
  networkDeclineCode: json.containsKey('network_decline_code') ? Omittable(json['network_decline_code'] as String?) : const Omittable.absent(),
); }

/// For refunds declined by the network, a decline code provided by the network which indicates the reason the refund failed.
final Omittable<String?> networkDeclineCode;

Map<String, dynamic> toJson() { return {
  if (networkDeclineCode.isPresent) 'network_decline_code': networkDeclineCode.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'network_decline_code'}.contains(key)); } 
RefundDestinationDetailsPaypal copyWith({Omittable<String?>? networkDeclineCode}) { return RefundDestinationDetailsPaypal(
  networkDeclineCode: networkDeclineCode ?? this.networkDeclineCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RefundDestinationDetailsPaypal &&
          networkDeclineCode == other.networkDeclineCode; } 
@override int get hashCode { return networkDeclineCode.hashCode; } 
@override String toString() { return 'RefundDestinationDetailsPaypal(networkDeclineCode: $networkDeclineCode)'; } 
 }
