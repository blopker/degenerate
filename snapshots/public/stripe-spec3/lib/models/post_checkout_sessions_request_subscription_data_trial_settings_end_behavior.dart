// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod {const PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod._(this.value);

factory PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod.fromJson(String json) { return switch (json) {
  'cancel' => cancel,
  'create_invoice' => createInvoice,
  'pause' => pause,
  _ => PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod._(json),
}; }

static const PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod cancel = PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod._('cancel');

static const PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod createInvoice = PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod._('create_invoice');

static const PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod pause = PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod._('pause');

static const List<PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod> values = [cancel, createInvoice, pause];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod($value)'; } 
 }
final class PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehavior {const PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehavior({required this.missingPaymentMethod});

factory PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehavior.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehavior(
  missingPaymentMethod: PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod.fromJson(json['missing_payment_method'] as String),
); }

final PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod missingPaymentMethod;

Map<String, dynamic> toJson() { return {
  'missing_payment_method': missingPaymentMethod.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('missing_payment_method'); } 
PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehavior copyWith({PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod? missingPaymentMethod}) { return PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehavior(
  missingPaymentMethod: missingPaymentMethod ?? this.missingPaymentMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehavior &&
          missingPaymentMethod == other.missingPaymentMethod; } 
@override int get hashCode { return missingPaymentMethod.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestSubscriptionDataTrialSettingsEndBehavior(missingPaymentMethod: $missingPaymentMethod)'; } 
 }
