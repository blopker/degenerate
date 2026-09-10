// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2 {const PostSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2._(this.value);

factory PostSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2 $empty = PostSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2._('');

static const List<PostSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsRequestPaymentMethodDataBillingDetailsName {
  const PostSetupIntentsRequestPaymentMethodDataBillingDetailsName({this.string = const Omittable.absent(),
this.postSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsRequestPaymentMethodDataBillingDetailsName._({required this.rawValue, required this.string,
required this.postSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2,});
  factory PostSetupIntentsRequestPaymentMethodDataBillingDetailsName.fromJson(Object? json) => PostSetupIntentsRequestPaymentMethodDataBillingDetailsName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2: parseAnyOfVariant<PostSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2>(json, (value) => PostSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2> postSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent) postSetupIntentsRequestPaymentMethodDataBillingDetailsNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodDataBillingDetailsName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsRequestPaymentMethodDataBillingDetailsName(${toJson()})';
}
