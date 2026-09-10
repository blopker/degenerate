// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2 {const PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2 $empty = PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffix {
  const PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffix({this.string = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffix._({required this.rawValue, required this.string,
required this.postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2,});
  factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffix.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffix._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2> postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2.isPresent) postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorSuffix(${toJson()})';
}
