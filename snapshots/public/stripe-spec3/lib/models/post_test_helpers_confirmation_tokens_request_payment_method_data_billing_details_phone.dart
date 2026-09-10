// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2 {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2._(this.value);

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2._(json),
};}

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2 $empty = PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2._('');

static const List<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2($value)';}
}

@immutable
final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhone {
  const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhone({this.string = const Omittable.absent(),
this.postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhone._({required this.rawValue, required this.string,
required this.postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2,});
  factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhone.fromJson(Object? json) => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2: parseAnyOfVariant<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2>(json, (value) => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2> postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent) postTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsPhone(${toJson()})';
}
