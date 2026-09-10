// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2._(json),
};}

static const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2($value)';}
}

@immutable
final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName {
  const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName({this.string = const Omittable.absent(),
this.postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName._({required this.rawValue, required this.string,
required this.postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2,});
  factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName.fromJson(Object? json) => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2: parseAnyOfVariant<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2>(json, (value) => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2> postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent) postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsName(${toJson()})';
}
