// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_resource_details_section_item_value.dart';@immutable final class McnResourceDetailsSectionItem {const McnResourceDetailsSectionItem({this.helpText, this.name, this.value, });

factory McnResourceDetailsSectionItem.fromJson(Map<String, dynamic> json) { return McnResourceDetailsSectionItem(
  helpText: json['helpText'] as String?,
  name: json['name'] as String?,
  value: json['value'] != null ? McnResourceDetailsSectionItemValue.fromJson(json['value'] as Map<String, dynamic>) : null,
); }

final String? helpText;

final String? name;

final McnResourceDetailsSectionItemValue? value;

Map<String, dynamic> toJson() { return {
  'helpText': ?helpText,
  'name': ?name,
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'helpText', 'name', 'value'}.contains(key)); } 
McnResourceDetailsSectionItem copyWith({String Function()? helpText, String Function()? name, McnResourceDetailsSectionItemValue Function()? value, }) { return McnResourceDetailsSectionItem(
  helpText: helpText != null ? helpText() : this.helpText,
  name: name != null ? name() : this.name,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnResourceDetailsSectionItem &&
          helpText == other.helpText &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(helpText, name, value); } 
@override String toString() { return 'McnResourceDetailsSectionItem(helpText: $helpText, name: $name, value: $value)'; } 
 }
