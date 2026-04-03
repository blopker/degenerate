// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class ProductMarketingFeature {const ProductMarketingFeature({this.name});

factory ProductMarketingFeature.fromJson(Map<String, dynamic> json) { return ProductMarketingFeature(
  name: json['name'] as String?,
); }

/// The marketing feature name. Up to 80 characters long.
final String? name;

Map<String, dynamic> toJson() { return {
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name'}.contains(key)); } 
ProductMarketingFeature copyWith({String Function()? name}) { return ProductMarketingFeature(
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProductMarketingFeature &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'ProductMarketingFeature(name: $name)'; } 
 }
