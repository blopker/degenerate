// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param32.dart';@immutable final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 {const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2._(this.value);

factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2._(json),
};}

static const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 $empty = PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2._('');

static const List<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2($value)';}
}

@immutable
final class PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact {
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact({this.invoicePaymentMethodOptionsParam32 = const Omittable.absent(),
this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact._({required this.rawValue, required this.invoicePaymentMethodOptionsParam32,
required this.postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2,});
  factory PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact.fromJson(Object? json) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam32: parseAnyOfVariant<InvoicePaymentMethodOptionsParam32>(json, (value) => InvoicePaymentMethodOptionsParam32.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2: parseAnyOfVariant<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2>(json, (value) => PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam32> invoicePaymentMethodOptionsParam32;
final Omittable<PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2> postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam32.isPresent || postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam32.isPresent) invoicePaymentMethodOptionsParam32.value?.toJson(),
if (postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.isPresent) postSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestPaymentSettingsPaymentMethodOptionsBancontact(${toJson()})';
}
