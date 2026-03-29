// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package_dimensions.dart';/// The dimensions of this product for shipping purposes.
final class ProductPackageDimensions {const ProductPackageDimensions({this.packageDimensions});

factory ProductPackageDimensions.fromJson(Map<String, dynamic> json) { return ProductPackageDimensions(
  packageDimensions: PackageDimensions.canParse(json) ? PackageDimensions.fromJson(json) : null,
); }

final PackageDimensions? packageDimensions;

/// At least one variant must be present.
bool get isValid { return packageDimensions != null; } 
Map<String, dynamic> toJson() { return {
  ...?packageDimensions?.toJson(),
}; } 
 }
