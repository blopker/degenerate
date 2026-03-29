// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod {const PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod._(this.value);

factory PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod.fromJson(String json) { return switch (json) {
  'cancel' => cancel,
  'create_invoice' => createInvoice,
  'pause' => pause,
  _ => PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod._(json),
}; }

static const PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod cancel = PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod._('cancel');

static const PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod createInvoice = PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod._('create_invoice');

static const PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod pause = PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod._('pause');

static const List<PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod> values = [cancel, createInvoice, pause];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod($value)'; } 
 }
final class PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehavior {const PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehavior({required this.missingPaymentMethod});

factory PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehavior.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehavior(
  missingPaymentMethod: PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod.fromJson(json['missing_payment_method'] as String),
); }

final PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod missingPaymentMethod;

Map<String, dynamic> toJson() { return {
  'missing_payment_method': missingPaymentMethod.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('missing_payment_method'); } 
PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehavior copyWith({PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod? missingPaymentMethod}) { return PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehavior(
  missingPaymentMethod: missingPaymentMethod ?? this.missingPaymentMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehavior &&
          missingPaymentMethod == other.missingPaymentMethod; } 
@override int get hashCode { return missingPaymentMethod.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestSubscriptionDataTrialSettingsEndBehavior(missingPaymentMethod: $missingPaymentMethod)'; } 
 }
