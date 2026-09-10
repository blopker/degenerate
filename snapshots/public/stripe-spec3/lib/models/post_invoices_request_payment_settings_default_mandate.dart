// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesRequestPaymentSettingsDefaultMandateVariant2 {const PostInvoicesRequestPaymentSettingsDefaultMandateVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsDefaultMandateVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsDefaultMandateVariant2._(json),
};}

static const PostInvoicesRequestPaymentSettingsDefaultMandateVariant2 $empty = PostInvoicesRequestPaymentSettingsDefaultMandateVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsDefaultMandateVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsDefaultMandateVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesRequestPaymentSettingsDefaultMandateVariant2($value)';}
}

@immutable
final class PostInvoicesRequestPaymentSettingsDefaultMandate {
  const PostInvoicesRequestPaymentSettingsDefaultMandate({this.string = const Omittable.absent(),
this.postInvoicesRequestPaymentSettingsDefaultMandateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestPaymentSettingsDefaultMandate._({required this.rawValue, required this.string,
required this.postInvoicesRequestPaymentSettingsDefaultMandateVariant2,});
  factory PostInvoicesRequestPaymentSettingsDefaultMandate.fromJson(Object? json) => PostInvoicesRequestPaymentSettingsDefaultMandate._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postInvoicesRequestPaymentSettingsDefaultMandateVariant2: parseAnyOfVariant<PostInvoicesRequestPaymentSettingsDefaultMandateVariant2>(json, (value) => PostInvoicesRequestPaymentSettingsDefaultMandateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostInvoicesRequestPaymentSettingsDefaultMandateVariant2> postInvoicesRequestPaymentSettingsDefaultMandateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postInvoicesRequestPaymentSettingsDefaultMandateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postInvoicesRequestPaymentSettingsDefaultMandateVariant2.isPresent) postInvoicesRequestPaymentSettingsDefaultMandateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestPaymentSettingsDefaultMandate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestPaymentSettingsDefaultMandate(${toJson()})';
}
