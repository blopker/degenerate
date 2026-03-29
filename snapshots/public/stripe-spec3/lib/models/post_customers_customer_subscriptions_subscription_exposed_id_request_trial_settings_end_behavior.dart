// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod.fromJson(String json) { return switch (json) {
  'cancel' => cancel,
  'create_invoice' => createInvoice,
  'pause' => pause,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod cancel = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod._('cancel');

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod createInvoice = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod._('create_invoice');

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod pause = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod._('pause');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod> values = [cancel, createInvoice, pause];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod($value)'; } 
 }
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior({required this.missingPaymentMethod});

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior(
  missingPaymentMethod: PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod.fromJson(json['missing_payment_method'] as String),
); }

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod missingPaymentMethod;

Map<String, dynamic> toJson() { return {
  'missing_payment_method': missingPaymentMethod.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('missing_payment_method'); } 
PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior copyWith({PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehaviorMissingPaymentMethod? missingPaymentMethod}) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior(
  missingPaymentMethod: missingPaymentMethod ?? this.missingPaymentMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior &&
          missingPaymentMethod == other.missingPaymentMethod; } 
@override int get hashCode { return missingPaymentMethod.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialSettingsEndBehavior(missingPaymentMethod: $missingPaymentMethod)'; } 
 }
