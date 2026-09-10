// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2 {const PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2._(this.value);

factory PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2._(json),
}; }

static const PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2 $empty = PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2._('');

static const List<PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2($value)'; } 
 }

@immutable
final class PostTestHelpersConfirmationTokensRequestShippingPhone {
  const PostTestHelpersConfirmationTokensRequestShippingPhone({this.string = const Omittable.absent(),
this.postTestHelpersConfirmationTokensRequestShippingPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTestHelpersConfirmationTokensRequestShippingPhone._({required this.rawValue, required this.string,
required this.postTestHelpersConfirmationTokensRequestShippingPhoneVariant2,});
  factory PostTestHelpersConfirmationTokensRequestShippingPhone.fromJson(Object? json) => PostTestHelpersConfirmationTokensRequestShippingPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTestHelpersConfirmationTokensRequestShippingPhoneVariant2: parseAnyOfVariant<PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2>(json, (value) => PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTestHelpersConfirmationTokensRequestShippingPhoneVariant2> postTestHelpersConfirmationTokensRequestShippingPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTestHelpersConfirmationTokensRequestShippingPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTestHelpersConfirmationTokensRequestShippingPhoneVariant2.isPresent) postTestHelpersConfirmationTokensRequestShippingPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestShippingPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTestHelpersConfirmationTokensRequestShippingPhone(${toJson()})';
}
