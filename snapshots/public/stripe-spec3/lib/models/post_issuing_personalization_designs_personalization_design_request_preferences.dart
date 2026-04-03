// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information on whether this personalization design is used to create cards when one is not specified.
@immutable final class PostIssuingPersonalizationDesignsPersonalizationDesignRequestPreferences {const PostIssuingPersonalizationDesignsPersonalizationDesignRequestPreferences({required this.isDefault});

factory PostIssuingPersonalizationDesignsPersonalizationDesignRequestPreferences.fromJson(Map<String, dynamic> json) { return PostIssuingPersonalizationDesignsPersonalizationDesignRequestPreferences(
  isDefault: json['is_default'] as bool,
); }

final bool isDefault;

Map<String, dynamic> toJson() { return {
  'is_default': isDefault,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('is_default') && json['is_default'] is bool; } 
PostIssuingPersonalizationDesignsPersonalizationDesignRequestPreferences copyWith({bool? isDefault}) { return PostIssuingPersonalizationDesignsPersonalizationDesignRequestPreferences(
  isDefault: isDefault ?? this.isDefault,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingPersonalizationDesignsPersonalizationDesignRequestPreferences &&
          isDefault == other.isDefault; } 
@override int get hashCode { return isDefault.hashCode; } 
@override String toString() { return 'PostIssuingPersonalizationDesignsPersonalizationDesignRequestPreferences(isDefault: $isDefault)'; } 
 }
