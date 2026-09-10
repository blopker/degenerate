// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'copilot_set_copilot_content_exclusion_for_organization_request_value_variant2.dart';import 'copilot_set_copilot_content_exclusion_for_organization_request_value_variant3.dart';
@immutable
final class CopilotSetCopilotContentExclusionForOrganizationRequestValue {
  const CopilotSetCopilotContentExclusionForOrganizationRequestValue({this.string = const Omittable.absent(),
this.copilotSetCopilotContentExclusionForOrganizationRequestValueVariant2 = const Omittable.absent(),
this.copilotSetCopilotContentExclusionForOrganizationRequestValueVariant3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CopilotSetCopilotContentExclusionForOrganizationRequestValue._({required this.rawValue, required this.string,
required this.copilotSetCopilotContentExclusionForOrganizationRequestValueVariant2,
required this.copilotSetCopilotContentExclusionForOrganizationRequestValueVariant3,});
  factory CopilotSetCopilotContentExclusionForOrganizationRequestValue.fromJson(Object? json) => CopilotSetCopilotContentExclusionForOrganizationRequestValue._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
copilotSetCopilotContentExclusionForOrganizationRequestValueVariant2: parseAnyOfVariant<CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant2>(json, (value) => CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant2.fromJson(value! as Map<String, dynamic>)),
copilotSetCopilotContentExclusionForOrganizationRequestValueVariant3: parseAnyOfVariant<CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant3>(json, (value) => CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant3.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant2> copilotSetCopilotContentExclusionForOrganizationRequestValueVariant2;
final Omittable<CopilotSetCopilotContentExclusionForOrganizationRequestValueVariant3> copilotSetCopilotContentExclusionForOrganizationRequestValueVariant3;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || copilotSetCopilotContentExclusionForOrganizationRequestValueVariant2.isPresent || copilotSetCopilotContentExclusionForOrganizationRequestValueVariant3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (copilotSetCopilotContentExclusionForOrganizationRequestValueVariant2.isPresent) copilotSetCopilotContentExclusionForOrganizationRequestValueVariant2.value?.toJson(),
if (copilotSetCopilotContentExclusionForOrganizationRequestValueVariant3.isPresent) copilotSetCopilotContentExclusionForOrganizationRequestValueVariant3.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CopilotSetCopilotContentExclusionForOrganizationRequestValue && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CopilotSetCopilotContentExclusionForOrganizationRequestValue(${toJson()})';
}
