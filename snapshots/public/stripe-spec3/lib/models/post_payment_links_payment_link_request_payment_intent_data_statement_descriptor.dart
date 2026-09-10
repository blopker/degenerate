// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2 {const PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2._(json),
};}

static const PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2 $empty = PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2($value)';}
}

@immutable
final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptor {
  const PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptor({this.string = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptor._({required this.rawValue, required this.string,
required this.postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2,});
  factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptor.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptor._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2> postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2.isPresent) postPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptorVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptor && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataStatementDescriptor(${toJson()})';
}
