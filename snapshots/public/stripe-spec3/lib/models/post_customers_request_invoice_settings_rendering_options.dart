// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_rendering_options_param.dart';@immutable final class PostCustomersRequestInvoiceSettingsRenderingOptionsVariant2 {const PostCustomersRequestInvoiceSettingsRenderingOptionsVariant2._(this.value);

factory PostCustomersRequestInvoiceSettingsRenderingOptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersRequestInvoiceSettingsRenderingOptionsVariant2._(json),
}; }

static const PostCustomersRequestInvoiceSettingsRenderingOptionsVariant2 $empty = PostCustomersRequestInvoiceSettingsRenderingOptionsVariant2._('');

static const List<PostCustomersRequestInvoiceSettingsRenderingOptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersRequestInvoiceSettingsRenderingOptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersRequestInvoiceSettingsRenderingOptionsVariant2($value)'; } 
 }

@immutable
final class PostCustomersRequestInvoiceSettingsRenderingOptions {
  const PostCustomersRequestInvoiceSettingsRenderingOptions({this.customerRenderingOptionsParam = const Omittable.absent(),
this.postCustomersRequestInvoiceSettingsRenderingOptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersRequestInvoiceSettingsRenderingOptions._({required this.rawValue, required this.customerRenderingOptionsParam,
required this.postCustomersRequestInvoiceSettingsRenderingOptionsVariant2,});
  factory PostCustomersRequestInvoiceSettingsRenderingOptions.fromJson(Object? json) => PostCustomersRequestInvoiceSettingsRenderingOptions._(
    rawValue: Omittable(json),
    customerRenderingOptionsParam: parseAnyOfVariant<CustomerRenderingOptionsParam>(json, (value) => CustomerRenderingOptionsParam.fromJson(value! as Map<String, dynamic>)),
postCustomersRequestInvoiceSettingsRenderingOptionsVariant2: parseAnyOfVariant<PostCustomersRequestInvoiceSettingsRenderingOptionsVariant2>(json, (value) => PostCustomersRequestInvoiceSettingsRenderingOptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerRenderingOptionsParam> customerRenderingOptionsParam;
final Omittable<PostCustomersRequestInvoiceSettingsRenderingOptionsVariant2> postCustomersRequestInvoiceSettingsRenderingOptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customerRenderingOptionsParam.isPresent || postCustomersRequestInvoiceSettingsRenderingOptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerRenderingOptionsParam.isPresent) customerRenderingOptionsParam.value?.toJson(),
if (postCustomersRequestInvoiceSettingsRenderingOptionsVariant2.isPresent) postCustomersRequestInvoiceSettingsRenderingOptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersRequestInvoiceSettingsRenderingOptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersRequestInvoiceSettingsRenderingOptions(${toJson()})';
}
