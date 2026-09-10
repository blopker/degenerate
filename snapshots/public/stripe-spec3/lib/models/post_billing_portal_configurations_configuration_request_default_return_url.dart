// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2 {const PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2._(json),
};}

static const PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2($value)';}
}
/// The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://docs.stripe.com/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
@immutable
final class PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrl {
  const PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrl({this.string = const Omittable.absent(),
this.postBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrl._({required this.rawValue, required this.string,
required this.postBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2,});
  factory PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrl.fromJson(Object? json) => PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrl._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2>(json, (value) => PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2> postBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2.isPresent) postBillingPortalConfigurationsConfigurationRequestDefaultReturnUrlVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrl && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsConfigurationRequestDefaultReturnUrl(${toJson()})';
}
