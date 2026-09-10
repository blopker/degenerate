// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName({this.string = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName._({required this.rawValue, required this.string,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName(${toJson()})';
}
