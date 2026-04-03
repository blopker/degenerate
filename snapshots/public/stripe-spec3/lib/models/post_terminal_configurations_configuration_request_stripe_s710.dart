// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stripe_s710.dart';@immutable final class PostTerminalConfigurationsConfigurationRequestStripeS710Variant2 {const PostTerminalConfigurationsConfigurationRequestStripeS710Variant2._(this.value);

factory PostTerminalConfigurationsConfigurationRequestStripeS710Variant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsConfigurationRequestStripeS710Variant2._(json),
}; }

static const PostTerminalConfigurationsConfigurationRequestStripeS710Variant2 $empty = PostTerminalConfigurationsConfigurationRequestStripeS710Variant2._('');

static const List<PostTerminalConfigurationsConfigurationRequestStripeS710Variant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsConfigurationRequestStripeS710Variant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsConfigurationRequestStripeS710Variant2($value)'; } 
 }
typedef PostTerminalConfigurationsConfigurationRequestStripeS710 = OneOf2<StripeS710,PostTerminalConfigurationsConfigurationRequestStripeS710Variant2>;
