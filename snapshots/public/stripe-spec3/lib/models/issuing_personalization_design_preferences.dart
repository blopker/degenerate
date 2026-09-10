// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingPersonalizationDesignPreferences {const IssuingPersonalizationDesignPreferences({required this.isDefault, this.isPlatformDefault = const Omittable.absent(), });

factory IssuingPersonalizationDesignPreferences.fromJson(Map<String, dynamic> json) { return IssuingPersonalizationDesignPreferences(
  isDefault: json['is_default'] as bool,
  isPlatformDefault: json.containsKey('is_platform_default') ? Omittable(json['is_platform_default'] as bool?) : const Omittable.absent(),
); }

/// Whether we use this personalization design to create cards when one isn't specified. A connected account uses the Connect platform's default design if no personalization design is set as the default design.
final bool isDefault;

/// Whether this personalization design is used to create cards when one is not specified and a default for this connected account does not exist.
final Omittable<bool?> isPlatformDefault;

Map<String, dynamic> toJson() { return {
  'is_default': isDefault,
  if (isPlatformDefault.isPresent) 'is_platform_default': isPlatformDefault.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('is_default') && json['is_default'] is bool; } 
IssuingPersonalizationDesignPreferences copyWith({bool? isDefault, Omittable<bool?>? isPlatformDefault, }) { return IssuingPersonalizationDesignPreferences(
  isDefault: isDefault ?? this.isDefault,
  isPlatformDefault: isPlatformDefault ?? this.isPlatformDefault,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingPersonalizationDesignPreferences &&
          isDefault == other.isDefault &&
          isPlatformDefault == other.isPlatformDefault; } 
@override int get hashCode { return Object.hash(isDefault, isPlatformDefault); } 
@override String toString() { return 'IssuingPersonalizationDesignPreferences(isDefault: $isDefault, isPlatformDefault: $isPlatformDefault)'; } 
 }
