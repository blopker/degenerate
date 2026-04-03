// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PortalFlowsCouponOffer {const PortalFlowsCouponOffer({required this.coupon});

factory PortalFlowsCouponOffer.fromJson(Map<String, dynamic> json) { return PortalFlowsCouponOffer(
  coupon: json['coupon'] as String,
); }

/// The ID of the coupon to be offered.
final String coupon;

Map<String, dynamic> toJson() { return {
  'coupon': coupon,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('coupon') && json['coupon'] is String; } 
PortalFlowsCouponOffer copyWith({String? coupon}) { return PortalFlowsCouponOffer(
  coupon: coupon ?? this.coupon,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalFlowsCouponOffer &&
          coupon == other.coupon; } 
@override int get hashCode { return coupon.hashCode; } 
@override String toString() { return 'PortalFlowsCouponOffer(coupon: $coupon)'; } 
 }
