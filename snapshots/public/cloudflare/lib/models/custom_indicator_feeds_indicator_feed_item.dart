// GENERATED CODE - DO NOT MODIFY BY HAND

import 'custom_indicator_feeds_description.dart';import 'custom_indicator_feeds_id.dart';import 'custom_indicator_feeds_is_attributable.dart';import 'custom_indicator_feeds_is_downloadable.dart';import 'custom_indicator_feeds_is_public.dart';import 'custom_indicator_feeds_name.dart';final class CustomIndicatorFeedsIndicatorFeedItem {const CustomIndicatorFeedsIndicatorFeedItem({this.createdOn, this.description, this.id, this.isAttributable, this.isDownloadable, this.isPublic, this.modifiedOn, this.name, });

factory CustomIndicatorFeedsIndicatorFeedItem.fromJson(Map<String, dynamic> json) { return CustomIndicatorFeedsIndicatorFeedItem(
  createdOn: json['created_on'] != null ? DateTime.parse(json['created_on'] as String) : null,
  description: json['description'] != null ? CustomIndicatorFeedsDescription.fromJson(json['description'] as String) : null,
  id: json['id'] != null ? CustomIndicatorFeedsId.fromJson(json['id'] as num) : null,
  isAttributable: json['is_attributable'] != null ? CustomIndicatorFeedsIsAttributable.fromJson(json['is_attributable'] as bool) : null,
  isDownloadable: json['is_downloadable'] != null ? CustomIndicatorFeedsIsDownloadable.fromJson(json['is_downloadable'] as bool) : null,
  isPublic: json['is_public'] != null ? CustomIndicatorFeedsIsPublic.fromJson(json['is_public'] as bool) : null,
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  name: json['name'] != null ? CustomIndicatorFeedsName.fromJson(json['name'] as String) : null,
); }

/// The date and time when the data entry was created
final DateTime? createdOn;

/// The description of the example test
final CustomIndicatorFeedsDescription? description;

/// The unique identifier for the indicator feed
final CustomIndicatorFeedsId? id;

final CustomIndicatorFeedsIsAttributable? isAttributable;

final CustomIndicatorFeedsIsDownloadable? isDownloadable;

final CustomIndicatorFeedsIsPublic? isPublic;

/// The date and time when the data entry was last modified
final DateTime? modifiedOn;

final CustomIndicatorFeedsName? name;

Map<String, dynamic> toJson() { return {
  if (createdOn != null) 'created_on': createdOn?.toIso8601String(),
  if (description != null) 'description': description?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (isAttributable != null) 'is_attributable': isAttributable?.toJson(),
  if (isDownloadable != null) 'is_downloadable': isDownloadable?.toJson(),
  if (isPublic != null) 'is_public': isPublic?.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_on', 'description', 'id', 'is_attributable', 'is_downloadable', 'is_public', 'modified_on', 'name'}.contains(key)); } 
CustomIndicatorFeedsIndicatorFeedItem copyWith({DateTime Function()? createdOn, CustomIndicatorFeedsDescription Function()? description, CustomIndicatorFeedsId Function()? id, CustomIndicatorFeedsIsAttributable Function()? isAttributable, CustomIndicatorFeedsIsDownloadable Function()? isDownloadable, CustomIndicatorFeedsIsPublic Function()? isPublic, DateTime Function()? modifiedOn, CustomIndicatorFeedsName Function()? name, }) { return CustomIndicatorFeedsIndicatorFeedItem(
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  description: description != null ? description() : this.description,
  id: id != null ? id() : this.id,
  isAttributable: isAttributable != null ? isAttributable() : this.isAttributable,
  isDownloadable: isDownloadable != null ? isDownloadable() : this.isDownloadable,
  isPublic: isPublic != null ? isPublic() : this.isPublic,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomIndicatorFeedsIndicatorFeedItem &&
          createdOn == other.createdOn &&
          description == other.description &&
          id == other.id &&
          isAttributable == other.isAttributable &&
          isDownloadable == other.isDownloadable &&
          isPublic == other.isPublic &&
          modifiedOn == other.modifiedOn &&
          name == other.name; } 
@override int get hashCode { return Object.hash(createdOn, description, id, isAttributable, isDownloadable, isPublic, modifiedOn, name); } 
@override String toString() { return 'CustomIndicatorFeedsIndicatorFeedItem(createdOn: $createdOn, description: $description, id: $id, isAttributable: $isAttributable, isDownloadable: $isDownloadable, isPublic: $isPublic, modifiedOn: $modifiedOn, name: $name)'; } 
 }
