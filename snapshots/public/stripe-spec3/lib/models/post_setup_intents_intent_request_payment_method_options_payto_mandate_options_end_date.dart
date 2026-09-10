// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 {const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDate {
  const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDate({this.string = const Omittable.absent(),
this.postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDate._({required this.rawValue, required this.string,
required this.postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2,});
  factory PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDate.fromJson(Object? json) => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDate._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2: parseAnyOfVariant<PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2>(json, (value) => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2> postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.isPresent) postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDate(${toJson()})';
}
