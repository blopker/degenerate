// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant2 {const CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant2({required this.ifAnyMatch});

factory CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant2.fromJson(Map<String, dynamic> json) { return CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant2(
  ifAnyMatch: (json['ifAnyMatch'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> ifAnyMatch;

Map<String, dynamic> toJson() { return {
  'ifAnyMatch': ifAnyMatch,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ifAnyMatch'); } 
CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant2 copyWith({List<String>? ifAnyMatch}) { return CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant2(
  ifAnyMatch: ifAnyMatch ?? this.ifAnyMatch,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant2 &&
          listEquals(ifAnyMatch, other.ifAnyMatch); } 
@override int get hashCode { return Object.hashAll(ifAnyMatch).hashCode; } 
@override String toString() { return 'CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant2(ifAnyMatch: $ifAnyMatch)'; } 
 }
