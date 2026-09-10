// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 {const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsName {
  const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsName({this.string = const Omittable.absent(),
this.postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsName._({required this.rawValue, required this.string,
required this.postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2,});
  factory PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsName.fromJson(Object? json) => PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2: parseAnyOfVariant<PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2>(json, (value) => PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2> postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent) postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsName(${toJson()})';
}
