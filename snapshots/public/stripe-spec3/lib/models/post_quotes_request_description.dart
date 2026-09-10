// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesRequestDescriptionVariant2 {const PostQuotesRequestDescriptionVariant2._(this.value);

factory PostQuotesRequestDescriptionVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestDescriptionVariant2._(json),
};}

static const PostQuotesRequestDescriptionVariant2 $empty = PostQuotesRequestDescriptionVariant2._('');

static const List<PostQuotesRequestDescriptionVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesRequestDescriptionVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesRequestDescriptionVariant2($value)';}
}
/// A description that will be displayed on the quote PDF. If no value is passed, the default description configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
@immutable
final class PostQuotesRequestDescription {
  const PostQuotesRequestDescription({this.string = const Omittable.absent(),
this.postQuotesRequestDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesRequestDescription._({required this.rawValue, required this.string,
required this.postQuotesRequestDescriptionVariant2,});
  factory PostQuotesRequestDescription.fromJson(Object? json) => PostQuotesRequestDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postQuotesRequestDescriptionVariant2: parseAnyOfVariant<PostQuotesRequestDescriptionVariant2>(json, (value) => PostQuotesRequestDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostQuotesRequestDescriptionVariant2> postQuotesRequestDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postQuotesRequestDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postQuotesRequestDescriptionVariant2.isPresent) postQuotesRequestDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesRequestDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesRequestDescription(${toJson()})';
}
