// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceRequestEffectiveAtVariant2 {const PostInvoicesInvoiceRequestEffectiveAtVariant2._(this.value);

factory PostInvoicesInvoiceRequestEffectiveAtVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestEffectiveAtVariant2._(json),
};}

static const PostInvoicesInvoiceRequestEffectiveAtVariant2 $empty = PostInvoicesInvoiceRequestEffectiveAtVariant2._('');

static const List<PostInvoicesInvoiceRequestEffectiveAtVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceRequestEffectiveAtVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceRequestEffectiveAtVariant2($value)';}
}
/// The date when this invoice is in effect. Same as `finalized_at` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the invoice PDF and receipt.
@immutable
final class PostInvoicesInvoiceRequestEffectiveAt {
  const PostInvoicesInvoiceRequestEffectiveAt({this.$int = const Omittable.absent(),
this.postInvoicesInvoiceRequestEffectiveAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestEffectiveAt._({required this.rawValue, required this.$int,
required this.postInvoicesInvoiceRequestEffectiveAtVariant2,});
  factory PostInvoicesInvoiceRequestEffectiveAt.fromJson(Object? json) => PostInvoicesInvoiceRequestEffectiveAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postInvoicesInvoiceRequestEffectiveAtVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestEffectiveAtVariant2>(json, (value) => PostInvoicesInvoiceRequestEffectiveAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostInvoicesInvoiceRequestEffectiveAtVariant2> postInvoicesInvoiceRequestEffectiveAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postInvoicesInvoiceRequestEffectiveAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postInvoicesInvoiceRequestEffectiveAtVariant2.isPresent) postInvoicesInvoiceRequestEffectiveAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestEffectiveAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestEffectiveAt(${toJson()})';
}
