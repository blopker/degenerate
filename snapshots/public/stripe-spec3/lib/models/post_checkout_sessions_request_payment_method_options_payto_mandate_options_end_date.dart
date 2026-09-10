// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 {const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2._(json),
};}

static const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 $empty = PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2._('');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2($value)';}
}

@immutable
final class PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate {
  const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate({this.string = const Omittable.absent(),
this.postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate._({required this.rawValue, required this.string,
required this.postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2,});
  factory PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate.fromJson(Object? json) => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2>(json, (value) => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2> postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.isPresent) postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate(${toJson()})';
}
