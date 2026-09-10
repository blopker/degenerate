// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_checkout_sessions_session_request_shipping_options_variant1.dart';@immutable final class PostCheckoutSessionsSessionRequestShippingOptionsVariant2 {const PostCheckoutSessionsSessionRequestShippingOptionsVariant2._(this.value);

factory PostCheckoutSessionsSessionRequestShippingOptionsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsSessionRequestShippingOptionsVariant2._(json),
};}

static const PostCheckoutSessionsSessionRequestShippingOptionsVariant2 $empty = PostCheckoutSessionsSessionRequestShippingOptionsVariant2._('');

static const List<PostCheckoutSessionsSessionRequestShippingOptionsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCheckoutSessionsSessionRequestShippingOptionsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCheckoutSessionsSessionRequestShippingOptionsVariant2($value)';}
}
/// The shipping rate options to apply to this Session. Up to a maximum of 5.
@immutable
final class PostCheckoutSessionsSessionRequestShippingOptions {
  const PostCheckoutSessionsSessionRequestShippingOptions({this.listPostCheckoutSessionsSessionRequestShippingOptionsVariant1 = const Omittable.absent(),
this.postCheckoutSessionsSessionRequestShippingOptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsSessionRequestShippingOptions._({required this.rawValue, required this.listPostCheckoutSessionsSessionRequestShippingOptionsVariant1,
required this.postCheckoutSessionsSessionRequestShippingOptionsVariant2,});
  factory PostCheckoutSessionsSessionRequestShippingOptions.fromJson(Object? json) => PostCheckoutSessionsSessionRequestShippingOptions._(
    rawValue: Omittable(json),
    listPostCheckoutSessionsSessionRequestShippingOptionsVariant1: parseAnyOfVariant<List<PostCheckoutSessionsSessionRequestShippingOptionsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostCheckoutSessionsSessionRequestShippingOptionsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postCheckoutSessionsSessionRequestShippingOptionsVariant2: parseAnyOfVariant<PostCheckoutSessionsSessionRequestShippingOptionsVariant2>(json, (value) => PostCheckoutSessionsSessionRequestShippingOptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostCheckoutSessionsSessionRequestShippingOptionsVariant1>> listPostCheckoutSessionsSessionRequestShippingOptionsVariant1;
final Omittable<PostCheckoutSessionsSessionRequestShippingOptionsVariant2> postCheckoutSessionsSessionRequestShippingOptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostCheckoutSessionsSessionRequestShippingOptionsVariant1.isPresent || postCheckoutSessionsSessionRequestShippingOptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostCheckoutSessionsSessionRequestShippingOptionsVariant1.isPresent) listPostCheckoutSessionsSessionRequestShippingOptionsVariant1.value?.map((e) => e.toJson()).toList(),
if (postCheckoutSessionsSessionRequestShippingOptionsVariant2.isPresent) postCheckoutSessionsSessionRequestShippingOptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsSessionRequestShippingOptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsSessionRequestShippingOptions(${toJson()})';
}
