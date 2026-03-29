// GENERATED CODE - DO NOT MODIFY BY HAND

final class PatchIndicatorUpdateResponseTags {const PatchIndicatorUpdateResponseTags({this.categoryName, this.uuid, this.value, });

factory PatchIndicatorUpdateResponseTags.fromJson(Map<String, dynamic> json) { return PatchIndicatorUpdateResponseTags(
  categoryName: json['categoryName'] as String?,
  uuid: json['uuid'] as String?,
  value: json['value'] as String?,
); }

final String? categoryName;

final String? uuid;

final String? value;

Map<String, dynamic> toJson() { return {
  'categoryName': ?categoryName,
  'uuid': ?uuid,
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PatchIndicatorUpdateResponseTags copyWith({String Function()? categoryName, String Function()? uuid, String Function()? value, }) { return PatchIndicatorUpdateResponseTags(
  categoryName: categoryName != null ? categoryName() : this.categoryName,
  uuid: uuid != null ? uuid() : this.uuid,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchIndicatorUpdateResponseTags &&
          categoryName == other.categoryName &&
          uuid == other.uuid &&
          value == other.value; } 
@override int get hashCode { return Object.hash(categoryName, uuid, value); } 
@override String toString() { return 'PatchIndicatorUpdateResponseTags(categoryName: $categoryName, uuid: $uuid, value: $value)'; } 
 }
