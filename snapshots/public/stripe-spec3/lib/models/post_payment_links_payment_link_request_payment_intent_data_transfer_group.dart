// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2 {const PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2._(json),
};}

static const PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2 $empty = PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2($value)';}
}

@immutable
final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroup {
  const PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroup({this.string = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroup._({required this.rawValue, required this.string,
required this.postPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2,});
  factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroup.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroup._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2> postPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2.isPresent) postPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroupVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroup && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataTransferGroup(${toJson()})';
}
