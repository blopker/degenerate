// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A component value for a subscription.
@immutable final class ComponentValue2 {const ComponentValue2({this.$default, this.name, this.price, this.value, });

factory ComponentValue2.fromJson(Map<String, dynamic> json) { return ComponentValue2(
  $default: json['default'] != null ? (json['default'] as num).toDouble() : null,
  name: json['name'] as String?,
  price: json['price'] != null ? (json['price'] as num).toDouble() : null,
  value: json['value'] != null ? (json['value'] as num).toDouble() : null,
); }

/// The default amount assigned.
final double? $default;

/// The name of the component value.
final String? name;

/// The unit price for the component value.
final double? price;

/// The amount of the component value assigned.
final double? value;

Map<String, dynamic> toJson() { return {
  'default': ?$default,
  'name': ?name,
  'price': ?price,
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default', 'name', 'price', 'value'}.contains(key)); } 
ComponentValue2 copyWith({double Function()? $default, String Function()? name, double Function()? price, double Function()? value, }) { return ComponentValue2(
  $default: $default != null ? $default() : this.$default,
  name: name != null ? name() : this.name,
  price: price != null ? price() : this.price,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ComponentValue2 &&
          $default == other.$default &&
          name == other.name &&
          price == other.price &&
          value == other.value; } 
@override int get hashCode { return Object.hash($default, name, price, value); } 
@override String toString() { return 'ComponentValue2(\$default: ${$default}, name: $name, price: $price, value: $value)'; } 
 }
