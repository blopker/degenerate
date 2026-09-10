// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_rendering_options_param2.dart';@immutable final class PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2 {const PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2._(this.value);

factory PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2._(json),
};}

static const PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2 $empty = PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2._('');

static const List<PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2($value)';}
}

@immutable
final class PostCustomersCustomerRequestInvoiceSettingsRenderingOptions {
  const PostCustomersCustomerRequestInvoiceSettingsRenderingOptions({this.customerRenderingOptionsParam2 = const Omittable.absent(),
this.postCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerRequestInvoiceSettingsRenderingOptions._({required this.rawValue, required this.customerRenderingOptionsParam2,
required this.postCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2,});
  factory PostCustomersCustomerRequestInvoiceSettingsRenderingOptions.fromJson(Object? json) => PostCustomersCustomerRequestInvoiceSettingsRenderingOptions._(
    rawValue: Omittable(json),
    customerRenderingOptionsParam2: parseAnyOfVariant<CustomerRenderingOptionsParam2>(json, (value) => CustomerRenderingOptionsParam2.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2: parseAnyOfVariant<PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2>(json, (value) => PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerRenderingOptionsParam2> customerRenderingOptionsParam2;
final Omittable<PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2> postCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customerRenderingOptionsParam2.isPresent || postCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerRenderingOptionsParam2.isPresent) customerRenderingOptionsParam2.value?.toJson(),
if (postCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2.isPresent) postCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerRequestInvoiceSettingsRenderingOptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerRequestInvoiceSettingsRenderingOptions(${toJson()})';
}
