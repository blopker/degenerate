// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentLinksRequestLineItemsAdjustableQuantity {const PostPaymentLinksRequestLineItemsAdjustableQuantity({required this.enabled, this.maximum, this.minimum, });

factory PostPaymentLinksRequestLineItemsAdjustableQuantity.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestLineItemsAdjustableQuantity(
  enabled: json['enabled'] as bool,
  maximum: json['maximum'] != null ? (json['maximum'] as num).toInt() : null,
  minimum: json['minimum'] != null ? (json['minimum'] as num).toInt() : null,
); }

final bool enabled;

final int? maximum;

final int? minimum;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'maximum': ?maximum,
  'minimum': ?minimum,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostPaymentLinksRequestLineItemsAdjustableQuantity copyWith({bool? enabled, int Function()? maximum, int Function()? minimum, }) { return PostPaymentLinksRequestLineItemsAdjustableQuantity(
  enabled: enabled ?? this.enabled,
  maximum: maximum != null ? maximum() : this.maximum,
  minimum: minimum != null ? minimum() : this.minimum,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestLineItemsAdjustableQuantity &&
          enabled == other.enabled &&
          maximum == other.maximum &&
          minimum == other.minimum; } 
@override int get hashCode { return Object.hash(enabled, maximum, minimum); } 
@override String toString() { return 'PostPaymentLinksRequestLineItemsAdjustableQuantity(enabled: $enabled, maximum: $maximum, minimum: $minimum)'; } 
 }
