// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_quotes_request_discounts_variant1.dart';@immutable final class PostQuotesRequestDiscountsVariant2 {const PostQuotesRequestDiscountsVariant2._(this.value);

factory PostQuotesRequestDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestDiscountsVariant2._(json),
};}

static const PostQuotesRequestDiscountsVariant2 $empty = PostQuotesRequestDiscountsVariant2._('');

static const List<PostQuotesRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesRequestDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesRequestDiscountsVariant2($value)';}
}
/// The discounts applied to the quote.
@immutable
final class PostQuotesRequestDiscounts {
  const PostQuotesRequestDiscounts({this.listPostQuotesRequestDiscountsVariant1 = const Omittable.absent(),
this.postQuotesRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesRequestDiscounts._({required this.rawValue, required this.listPostQuotesRequestDiscountsVariant1,
required this.postQuotesRequestDiscountsVariant2,});
  factory PostQuotesRequestDiscounts.fromJson(Object? json) => PostQuotesRequestDiscounts._(
    rawValue: Omittable(json),
    listPostQuotesRequestDiscountsVariant1: parseAnyOfVariant<List<PostQuotesRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostQuotesRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postQuotesRequestDiscountsVariant2: parseAnyOfVariant<PostQuotesRequestDiscountsVariant2>(json, (value) => PostQuotesRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostQuotesRequestDiscountsVariant1>> listPostQuotesRequestDiscountsVariant1;
final Omittable<PostQuotesRequestDiscountsVariant2> postQuotesRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostQuotesRequestDiscountsVariant1.isPresent || postQuotesRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostQuotesRequestDiscountsVariant1.isPresent) listPostQuotesRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postQuotesRequestDiscountsVariant2.isPresent) postQuotesRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesRequestDiscounts(${toJson()})';
}
