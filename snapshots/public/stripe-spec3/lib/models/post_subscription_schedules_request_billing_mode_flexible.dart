// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts {const PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts._(this.value);

factory PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts.fromJson(String json) { return switch (json) {
  'included' => included,
  'itemized' => itemized,
  _ => PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts._(json),
}; }

static const PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts included = PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts._('included');

static const PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts itemized = PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts._('itemized');

static const List<PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts> values = [included, itemized];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts($value)'; } 
 }
final class PostSubscriptionSchedulesRequestBillingModeFlexible {const PostSubscriptionSchedulesRequestBillingModeFlexible({this.prorationDiscounts});

factory PostSubscriptionSchedulesRequestBillingModeFlexible.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesRequestBillingModeFlexible(
  prorationDiscounts: json['proration_discounts'] != null ? PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts.fromJson(json['proration_discounts'] as String) : null,
); }

final PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts? prorationDiscounts;

Map<String, dynamic> toJson() { return {
  if (prorationDiscounts != null) 'proration_discounts': prorationDiscounts?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSubscriptionSchedulesRequestBillingModeFlexible copyWith({PostSubscriptionSchedulesRequestBillingModeFlexibleProrationDiscounts Function()? prorationDiscounts}) { return PostSubscriptionSchedulesRequestBillingModeFlexible(
  prorationDiscounts: prorationDiscounts != null ? prorationDiscounts() : this.prorationDiscounts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesRequestBillingModeFlexible &&
          prorationDiscounts == other.prorationDiscounts; } 
@override int get hashCode { return prorationDiscounts.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestBillingModeFlexible(prorationDiscounts: $prorationDiscounts)'; } 
 }
