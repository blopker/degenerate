// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_list_item.dart';import 'mcn_resource_preview_item.dart';import 'mcn_string_item.dart';import 'mcn_yaml_diff_item.dart';import 'mcn_yaml_item.dart';sealed class McnResourceDetailsSectionItemValue {const McnResourceDetailsSectionItemValue();

/// Deserialize from JSON, dispatching on the `item_type` discriminator.
factory McnResourceDetailsSectionItemValue.fromJson(Map<String, dynamic> json) { return switch (json['item_type']) {
  'mcn_string_item' => McnResourceDetailsSectionItemValueMcnStringItem.fromJson(json),
  'mcn_yaml_item' => McnResourceDetailsSectionItemValueMcnYamlItem.fromJson(json),
  'mcn_yaml_diff_item' => McnResourceDetailsSectionItemValueMcnYamlDiffItem.fromJson(json),
  'mcn_resource_preview_item' => McnResourceDetailsSectionItemValueMcnResourcePreviewItem.fromJson(json),
  'mcn_list_item' => McnResourceDetailsSectionItemValueMcnListItem.fromJson(json),
  _ => McnResourceDetailsSectionItemValue$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get itemType;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is McnResourceDetailsSectionItemValue$Unknown; } 
 }
final class McnResourceDetailsSectionItemValueMcnStringItem extends McnResourceDetailsSectionItemValue {const McnResourceDetailsSectionItemValueMcnStringItem(this.mcnStringItem);

factory McnResourceDetailsSectionItemValueMcnStringItem.fromJson(Map<String, dynamic> json) { return McnResourceDetailsSectionItemValueMcnStringItem(McnStringItem.fromJson(json)); }

final McnStringItem mcnStringItem;

@override String get itemType { return 'mcn_string_item'; } 
@override Map<String, dynamic> toJson() { return {'item_type': itemType, ...mcnStringItem.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is McnResourceDetailsSectionItemValueMcnStringItem && mcnStringItem == other.mcnStringItem; } 
@override int get hashCode { return mcnStringItem.hashCode; } 
@override String toString() { return 'McnResourceDetailsSectionItemValueMcnStringItem(mcnStringItem: $mcnStringItem)'; } 
 }
final class McnResourceDetailsSectionItemValueMcnYamlItem extends McnResourceDetailsSectionItemValue {const McnResourceDetailsSectionItemValueMcnYamlItem(this.mcnYamlItem);

factory McnResourceDetailsSectionItemValueMcnYamlItem.fromJson(Map<String, dynamic> json) { return McnResourceDetailsSectionItemValueMcnYamlItem(McnYamlItem.fromJson(json)); }

final McnYamlItem mcnYamlItem;

@override String get itemType { return 'mcn_yaml_item'; } 
@override Map<String, dynamic> toJson() { return {'item_type': itemType, ...mcnYamlItem.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is McnResourceDetailsSectionItemValueMcnYamlItem && mcnYamlItem == other.mcnYamlItem; } 
@override int get hashCode { return mcnYamlItem.hashCode; } 
@override String toString() { return 'McnResourceDetailsSectionItemValueMcnYamlItem(mcnYamlItem: $mcnYamlItem)'; } 
 }
final class McnResourceDetailsSectionItemValueMcnYamlDiffItem extends McnResourceDetailsSectionItemValue {const McnResourceDetailsSectionItemValueMcnYamlDiffItem(this.mcnYamlDiffItem);

factory McnResourceDetailsSectionItemValueMcnYamlDiffItem.fromJson(Map<String, dynamic> json) { return McnResourceDetailsSectionItemValueMcnYamlDiffItem(McnYamlDiffItem.fromJson(json)); }

final McnYamlDiffItem mcnYamlDiffItem;

@override String get itemType { return 'mcn_yaml_diff_item'; } 
@override Map<String, dynamic> toJson() { return {'item_type': itemType, ...mcnYamlDiffItem.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is McnResourceDetailsSectionItemValueMcnYamlDiffItem && mcnYamlDiffItem == other.mcnYamlDiffItem; } 
@override int get hashCode { return mcnYamlDiffItem.hashCode; } 
@override String toString() { return 'McnResourceDetailsSectionItemValueMcnYamlDiffItem(mcnYamlDiffItem: $mcnYamlDiffItem)'; } 
 }
final class McnResourceDetailsSectionItemValueMcnResourcePreviewItem extends McnResourceDetailsSectionItemValue {const McnResourceDetailsSectionItemValueMcnResourcePreviewItem(this.mcnResourcePreviewItem);

factory McnResourceDetailsSectionItemValueMcnResourcePreviewItem.fromJson(Map<String, dynamic> json) { return McnResourceDetailsSectionItemValueMcnResourcePreviewItem(McnResourcePreviewItem.fromJson(json)); }

final McnResourcePreviewItem mcnResourcePreviewItem;

@override String get itemType { return 'mcn_resource_preview_item'; } 
@override Map<String, dynamic> toJson() { return {'item_type': itemType, ...mcnResourcePreviewItem.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is McnResourceDetailsSectionItemValueMcnResourcePreviewItem && mcnResourcePreviewItem == other.mcnResourcePreviewItem; } 
@override int get hashCode { return mcnResourcePreviewItem.hashCode; } 
@override String toString() { return 'McnResourceDetailsSectionItemValueMcnResourcePreviewItem(mcnResourcePreviewItem: $mcnResourcePreviewItem)'; } 
 }
final class McnResourceDetailsSectionItemValueMcnListItem extends McnResourceDetailsSectionItemValue {const McnResourceDetailsSectionItemValueMcnListItem(this.mcnListItem);

factory McnResourceDetailsSectionItemValueMcnListItem.fromJson(Map<String, dynamic> json) { return McnResourceDetailsSectionItemValueMcnListItem(McnListItem.fromJson(json)); }

final McnListItem mcnListItem;

@override String get itemType { return 'mcn_list_item'; } 
@override Map<String, dynamic> toJson() { return {'item_type': itemType, ...mcnListItem.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is McnResourceDetailsSectionItemValueMcnListItem && mcnListItem == other.mcnListItem; } 
@override int get hashCode { return mcnListItem.hashCode; } 
@override String toString() { return 'McnResourceDetailsSectionItemValueMcnListItem(mcnListItem: $mcnListItem)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class McnResourceDetailsSectionItemValue$Unknown extends McnResourceDetailsSectionItemValue {const McnResourceDetailsSectionItemValue$Unknown(this.json);

final Map<String, dynamic> json;

@override String get itemType { return json['item_type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is McnResourceDetailsSectionItemValue$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'McnResourceDetailsSectionItemValue.unknown($json)'; } 
 }
