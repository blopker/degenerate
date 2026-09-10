// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_confirm_request_payment_method_options_klarna_subscriptions_variant1.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptions {
  const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptions({this.listPostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1 = const Omittable.absent(),
this.postSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptions._({required this.rawValue, required this.listPostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1,
required this.postSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2,});
  factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptions.fromJson(Object? json) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptions._(
    rawValue: Omittable(json),
    listPostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1: parseAnyOfVariant<List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2: parseAnyOfVariant<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2>(json, (value) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1>> listPostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1;
final Omittable<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2> postSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.isPresent || postSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.isPresent) listPostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.value?.map((e) => e.toJson()).toList(),
if (postSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.isPresent) postSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaSubscriptions(${toJson()})';
}
