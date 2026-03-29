// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod {const PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod._(this.value);

factory PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod.fromJson(String json) { return switch (json) {
  'cancel' => cancel,
  'create_invoice' => createInvoice,
  'pause' => pause,
  _ => PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod._(json),
}; }

static const PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod cancel = PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod._('cancel');

static const PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod createInvoice = PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod._('create_invoice');

static const PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod pause = PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod._('pause');

static const List<PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod> values = [cancel, createInvoice, pause];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod($value)'; } 
 }
final class PostSubscriptionsRequestTrialSettingsEndBehavior {const PostSubscriptionsRequestTrialSettingsEndBehavior({required this.missingPaymentMethod});

factory PostSubscriptionsRequestTrialSettingsEndBehavior.fromJson(Map<String, dynamic> json) { return PostSubscriptionsRequestTrialSettingsEndBehavior(
  missingPaymentMethod: PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod.fromJson(json['missing_payment_method'] as String),
); }

final PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod missingPaymentMethod;

Map<String, dynamic> toJson() { return {
  'missing_payment_method': missingPaymentMethod.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('missing_payment_method'); } 
PostSubscriptionsRequestTrialSettingsEndBehavior copyWith({PostSubscriptionsRequestTrialSettingsEndBehaviorMissingPaymentMethod? missingPaymentMethod}) { return PostSubscriptionsRequestTrialSettingsEndBehavior(
  missingPaymentMethod: missingPaymentMethod ?? this.missingPaymentMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsRequestTrialSettingsEndBehavior &&
          missingPaymentMethod == other.missingPaymentMethod; } 
@override int get hashCode { return missingPaymentMethod.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestTrialSettingsEndBehavior(missingPaymentMethod: $missingPaymentMethod)'; } 
 }
