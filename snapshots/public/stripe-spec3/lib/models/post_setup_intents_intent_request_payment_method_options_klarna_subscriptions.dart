// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_request_payment_method_options_klarna_subscriptions_variant1.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 {const PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._(json),
};}

static const PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2($value)';}
}

@immutable
final class PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptions {
  const PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptions({this.listPostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1 = const Omittable.absent(),
this.postSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptions._({required this.rawValue, required this.listPostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1,
required this.postSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2,});
  factory PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptions.fromJson(Object? json) => PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptions._(
    rawValue: Omittable(json),
    listPostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1: parseAnyOfVariant<List<PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2: parseAnyOfVariant<PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2>(json, (value) => PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1>> listPostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1;
final Omittable<PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2> postSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.isPresent || postSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.isPresent) listPostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.value?.map((e) => e.toJson()).toList(),
if (postSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.isPresent) postSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaSubscriptions(${toJson()})';
}
