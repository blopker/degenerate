// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2._(json),
};}

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2($value)';}
}

@immutable
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIds {
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIds({this.listString = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIds._({required this.rawValue, required this.listString,
required this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2,});
  factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIds.fromJson(Object? json) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2>(json, (value) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2> postInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2.isPresent) postInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesInvoiceSettingsAccountTaxIds(${toJson()})';
}
