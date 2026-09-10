// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_credit_notes_request_lines_tax_amounts_variant1.dart';@immutable final class PostCreditNotesRequestLinesTaxAmountsVariant2 {const PostCreditNotesRequestLinesTaxAmountsVariant2._(this.value);

factory PostCreditNotesRequestLinesTaxAmountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCreditNotesRequestLinesTaxAmountsVariant2._(json),
}; }

static const PostCreditNotesRequestLinesTaxAmountsVariant2 $empty = PostCreditNotesRequestLinesTaxAmountsVariant2._('');

static const List<PostCreditNotesRequestLinesTaxAmountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCreditNotesRequestLinesTaxAmountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCreditNotesRequestLinesTaxAmountsVariant2($value)'; } 
 }

@immutable
final class PostCreditNotesRequestLinesTaxAmounts {
  const PostCreditNotesRequestLinesTaxAmounts({this.listPostCreditNotesRequestLinesTaxAmountsVariant1 = const Omittable.absent(),
this.postCreditNotesRequestLinesTaxAmountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCreditNotesRequestLinesTaxAmounts._({required this.rawValue, required this.listPostCreditNotesRequestLinesTaxAmountsVariant1,
required this.postCreditNotesRequestLinesTaxAmountsVariant2,});
  factory PostCreditNotesRequestLinesTaxAmounts.fromJson(Object? json) => PostCreditNotesRequestLinesTaxAmounts._(
    rawValue: Omittable(json),
    listPostCreditNotesRequestLinesTaxAmountsVariant1: parseAnyOfVariant<List<PostCreditNotesRequestLinesTaxAmountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostCreditNotesRequestLinesTaxAmountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postCreditNotesRequestLinesTaxAmountsVariant2: parseAnyOfVariant<PostCreditNotesRequestLinesTaxAmountsVariant2>(json, (value) => PostCreditNotesRequestLinesTaxAmountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostCreditNotesRequestLinesTaxAmountsVariant1>> listPostCreditNotesRequestLinesTaxAmountsVariant1;
final Omittable<PostCreditNotesRequestLinesTaxAmountsVariant2> postCreditNotesRequestLinesTaxAmountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostCreditNotesRequestLinesTaxAmountsVariant1.isPresent || postCreditNotesRequestLinesTaxAmountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostCreditNotesRequestLinesTaxAmountsVariant1.isPresent) listPostCreditNotesRequestLinesTaxAmountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postCreditNotesRequestLinesTaxAmountsVariant2.isPresent) postCreditNotesRequestLinesTaxAmountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCreditNotesRequestLinesTaxAmounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCreditNotesRequestLinesTaxAmounts(${toJson()})';
}
