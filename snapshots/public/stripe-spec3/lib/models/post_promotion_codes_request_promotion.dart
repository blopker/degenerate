// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPromotionCodesRequestPromotionType {const PostPromotionCodesRequestPromotionType._(this.value);

factory PostPromotionCodesRequestPromotionType.fromJson(String json) { return switch (json) {
  'coupon' => coupon,
  _ => PostPromotionCodesRequestPromotionType._(json),
}; }

static const PostPromotionCodesRequestPromotionType coupon = PostPromotionCodesRequestPromotionType._('coupon');

static const List<PostPromotionCodesRequestPromotionType> values = [coupon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPromotionCodesRequestPromotionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPromotionCodesRequestPromotionType($value)'; } 
 }
/// The promotion referenced by this promotion code.
@immutable final class PostPromotionCodesRequestPromotion {const PostPromotionCodesRequestPromotion({required this.type, this.coupon, });

factory PostPromotionCodesRequestPromotion.fromJson(Map<String, dynamic> json) { return PostPromotionCodesRequestPromotion(
  coupon: json['coupon'] as String?,
  type: PostPromotionCodesRequestPromotionType.fromJson(json['type'] as String),
); }

final String? coupon;

final PostPromotionCodesRequestPromotionType type;

Map<String, dynamic> toJson() { return {
  'coupon': ?coupon,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostPromotionCodesRequestPromotion copyWith({String Function()? coupon, PostPromotionCodesRequestPromotionType? type, }) { return PostPromotionCodesRequestPromotion(
  coupon: coupon != null ? coupon() : this.coupon,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPromotionCodesRequestPromotion &&
          coupon == other.coupon &&
          type == other.type; } 
@override int get hashCode { return Object.hash(coupon, type); } 
@override String toString() { return 'PostPromotionCodesRequestPromotion(coupon: $coupon, type: $type)'; } 
 }
