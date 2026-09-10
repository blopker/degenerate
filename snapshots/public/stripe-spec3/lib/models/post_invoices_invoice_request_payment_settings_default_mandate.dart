// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2 {const PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2._(this.value);

factory PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2 $empty = PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2._('');

static const List<PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2($value)'; } 
 }

@immutable
final class PostInvoicesInvoiceRequestPaymentSettingsDefaultMandate {
  const PostInvoicesInvoiceRequestPaymentSettingsDefaultMandate({this.string = const Omittable.absent(),
this.postInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestPaymentSettingsDefaultMandate._({required this.rawValue, required this.string,
required this.postInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2,});
  factory PostInvoicesInvoiceRequestPaymentSettingsDefaultMandate.fromJson(Object? json) => PostInvoicesInvoiceRequestPaymentSettingsDefaultMandate._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2>(json, (value) => PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2> postInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2.isPresent) postInvoicesInvoiceRequestPaymentSettingsDefaultMandateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestPaymentSettingsDefaultMandate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestPaymentSettingsDefaultMandate(${toJson()})';
}
