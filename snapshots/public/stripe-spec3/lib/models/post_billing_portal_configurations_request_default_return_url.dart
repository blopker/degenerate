// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2 {const PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2._(this.value);

factory PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2._(json),
};}

static const PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2 $empty = PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2._('');

static const List<PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2($value)';}
}
/// The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://docs.stripe.com/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
@immutable
final class PostBillingPortalConfigurationsRequestDefaultReturnUrl {
  const PostBillingPortalConfigurationsRequestDefaultReturnUrl({this.string = const Omittable.absent(),
this.postBillingPortalConfigurationsRequestDefaultReturnUrlVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsRequestDefaultReturnUrl._({required this.rawValue, required this.string,
required this.postBillingPortalConfigurationsRequestDefaultReturnUrlVariant2,});
  factory PostBillingPortalConfigurationsRequestDefaultReturnUrl.fromJson(Object? json) => PostBillingPortalConfigurationsRequestDefaultReturnUrl._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postBillingPortalConfigurationsRequestDefaultReturnUrlVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2>(json, (value) => PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2> postBillingPortalConfigurationsRequestDefaultReturnUrlVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postBillingPortalConfigurationsRequestDefaultReturnUrlVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postBillingPortalConfigurationsRequestDefaultReturnUrlVariant2.isPresent) postBillingPortalConfigurationsRequestDefaultReturnUrlVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestDefaultReturnUrl && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsRequestDefaultReturnUrl(${toJson()})';
}
