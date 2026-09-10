// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2 {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2._(this.value);

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2._(json),
};}

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2 $empty = PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2._('');

static const List<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2($value)';}
}

@immutable
final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmail {
  const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmail({this.string = const Omittable.absent(),
this.postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmail._({required this.rawValue, required this.string,
required this.postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2,});
  factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmail.fromJson(Object? json) => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmail._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2: parseAnyOfVariant<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2>(json, (value) => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2> postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2.isPresent) postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmailVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmail && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsEmail(${toJson()})';
}
