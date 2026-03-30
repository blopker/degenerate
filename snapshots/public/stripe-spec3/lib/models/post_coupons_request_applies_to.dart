// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A hash containing directions for what this Coupon will apply discounts to.
final class PostCouponsRequestAppliesTo {const PostCouponsRequestAppliesTo({this.products});

factory PostCouponsRequestAppliesTo.fromJson(Map<String, dynamic> json) { return PostCouponsRequestAppliesTo(
  products: (json['products'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? products;

Map<String, dynamic> toJson() { return {
  'products': ?products,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'products'}.contains(key)); } 
PostCouponsRequestAppliesTo copyWith({List<String> Function()? products}) { return PostCouponsRequestAppliesTo(
  products: products != null ? products() : this.products,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCouponsRequestAppliesTo &&
          listEquals(products, other.products); } 
@override int get hashCode { return Object.hashAll(products ?? const []).hashCode; } 
@override String toString() { return 'PostCouponsRequestAppliesTo(products: $products)'; } 
 }
