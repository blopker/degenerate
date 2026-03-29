// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
final class CouponAppliesTo {const CouponAppliesTo({required this.products});

factory CouponAppliesTo.fromJson(Map<String, dynamic> json) { return CouponAppliesTo(
  products: (json['products'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// A list of product IDs this coupon applies to
final List<String> products;

Map<String, dynamic> toJson() { return {
  'products': products,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('products'); } 
CouponAppliesTo copyWith({List<String>? products}) { return CouponAppliesTo(
  products: products ?? this.products,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CouponAppliesTo &&
          listEquals(products, other.products); } 
@override int get hashCode { return Object.hashAll(products).hashCode; } 
@override String toString() { return 'CouponAppliesTo(products: $products)'; } 
 }
