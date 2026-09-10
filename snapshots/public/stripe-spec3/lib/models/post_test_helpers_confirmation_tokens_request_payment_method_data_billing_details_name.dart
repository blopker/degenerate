// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2 {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2._(this.value);

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2._(json),
};}

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2 $empty = PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2._('');

static const List<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2($value)';}
}

@immutable
final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsName {
  const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsName({this.string = const Omittable.absent(),
this.postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsName._({required this.rawValue, required this.string,
required this.postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2,});
  factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsName.fromJson(Object? json) => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2: parseAnyOfVariant<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2>(json, (value) => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2> postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent) postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsName(${toJson()})';
}
