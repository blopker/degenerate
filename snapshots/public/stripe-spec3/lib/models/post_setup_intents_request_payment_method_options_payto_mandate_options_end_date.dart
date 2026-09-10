// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 {const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 $empty = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2._('');

static const List<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate {
  const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate({this.string = const Omittable.absent(),
this.postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate._({required this.rawValue, required this.string,
required this.postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2,});
  factory PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate.fromJson(Object? json) => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2: parseAnyOfVariant<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2>(json, (value) => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2> postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.isPresent) postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate(${toJson()})';
}
