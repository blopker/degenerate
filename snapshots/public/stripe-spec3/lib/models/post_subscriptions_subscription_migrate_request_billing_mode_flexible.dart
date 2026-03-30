// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts {const PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts._(this.value);

factory PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts.fromJson(String json) { return switch (json) {
  'included' => included,
  'itemized' => itemized,
  _ => PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts._(json),
}; }

static const PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts included = PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts._('included');

static const PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts itemized = PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts._('itemized');

static const List<PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts> values = [included, itemized];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts($value)'; } 
 }
final class PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexible {const PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexible({this.prorationDiscounts});

factory PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexible.fromJson(Map<String, dynamic> json) { return PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexible(
  prorationDiscounts: json['proration_discounts'] != null ? PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts.fromJson(json['proration_discounts'] as String) : null,
); }

final PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts? prorationDiscounts;

Map<String, dynamic> toJson() { return {
  if (prorationDiscounts != null) 'proration_discounts': prorationDiscounts?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'proration_discounts'}.contains(key)); } 
PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexible copyWith({PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexibleProrationDiscounts Function()? prorationDiscounts}) { return PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexible(
  prorationDiscounts: prorationDiscounts != null ? prorationDiscounts() : this.prorationDiscounts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexible &&
          prorationDiscounts == other.prorationDiscounts; } 
@override int get hashCode { return prorationDiscounts.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionMigrateRequestBillingModeFlexible(prorationDiscounts: $prorationDiscounts)'; } 
 }
