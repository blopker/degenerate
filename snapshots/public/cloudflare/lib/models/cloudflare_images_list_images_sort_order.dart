// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Sorting order by upload time
@immutable final class CloudflareImagesListImagesSortOrder {const CloudflareImagesListImagesSortOrder._(this.value);

factory CloudflareImagesListImagesSortOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => CloudflareImagesListImagesSortOrder._(json),
}; }

static const CloudflareImagesListImagesSortOrder asc = CloudflareImagesListImagesSortOrder._('asc');

static const CloudflareImagesListImagesSortOrder desc = CloudflareImagesListImagesSortOrder._('desc');

static const List<CloudflareImagesListImagesSortOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflareImagesListImagesSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CloudflareImagesListImagesSortOrder($value)'; } 
 }
