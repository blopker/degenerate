// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DosInfraPrefixUpdate {const DosInfraPrefixUpdate({this.comment, this.enabled, });

factory DosInfraPrefixUpdate.fromJson(Map<String, dynamic> json) { return DosInfraPrefixUpdate(
  comment: json['comment'] as String?,
  enabled: json['enabled'] as bool?,
); }

/// A comment describing the allowlist prefix. Optional.
final String? comment;

/// Whether to enable the allowlist prefix into effect. Optional.
final bool? enabled;

Map<String, dynamic> toJson() { return {
  'comment': ?comment,
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'comment', 'enabled'}.contains(key)); } 
DosInfraPrefixUpdate copyWith({String Function()? comment, bool Function()? enabled, }) { return DosInfraPrefixUpdate(
  comment: comment != null ? comment() : this.comment,
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosInfraPrefixUpdate &&
          comment == other.comment &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(comment, enabled); } 
@override String toString() { return 'DosInfraPrefixUpdate(comment: $comment, enabled: $enabled)'; } 
 }
