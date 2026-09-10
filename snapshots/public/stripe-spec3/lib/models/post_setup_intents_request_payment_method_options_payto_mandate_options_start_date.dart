// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 {const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._(json),
};}

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 $empty = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._('');

static const List<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2($value)';}
}

@immutable
final class PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate {
  const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate({this.string = const Omittable.absent(),
this.postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate._({required this.rawValue, required this.string,
required this.postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2,});
  factory PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate.fromJson(Object? json) => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2: parseAnyOfVariant<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2>(json, (value) => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2> postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.isPresent) postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate(${toJson()})';
}
