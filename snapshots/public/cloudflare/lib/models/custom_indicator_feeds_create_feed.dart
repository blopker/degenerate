// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_indicator_feeds_description.dart';import 'custom_indicator_feeds_name.dart';@immutable final class CustomIndicatorFeedsCreateFeed {const CustomIndicatorFeedsCreateFeed({this.description, this.name, });

factory CustomIndicatorFeedsCreateFeed.fromJson(Map<String, dynamic> json) { return CustomIndicatorFeedsCreateFeed(
  description: json['description'] != null ? CustomIndicatorFeedsDescription.fromJson(json['description'] as String) : null,
  name: json['name'] != null ? CustomIndicatorFeedsName.fromJson(json['name'] as String) : null,
); }

final CustomIndicatorFeedsDescription? description;

final CustomIndicatorFeedsName? name;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'name'}.contains(key)); } 
CustomIndicatorFeedsCreateFeed copyWith({CustomIndicatorFeedsDescription Function()? description, CustomIndicatorFeedsName Function()? name, }) { return CustomIndicatorFeedsCreateFeed(
  description: description != null ? description() : this.description,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomIndicatorFeedsCreateFeed &&
          description == other.description &&
          name == other.name; } 
@override int get hashCode { return Object.hash(description, name); } 
@override String toString() { return 'CustomIndicatorFeedsCreateFeed(description: $description, name: $name)'; } 
 }
