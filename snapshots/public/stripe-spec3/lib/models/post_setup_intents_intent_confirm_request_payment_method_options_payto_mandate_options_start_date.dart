// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._(json),
};}

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2($value)';}
}

@immutable
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDate {
  const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDate({this.string = const Omittable.absent(),
this.postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDate._({required this.rawValue, required this.string,
required this.postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2,});
  factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDate.fromJson(Object? json) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDate._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2: parseAnyOfVariant<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2>(json, (value) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2> postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.isPresent) postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDate(${toJson()})';
}
