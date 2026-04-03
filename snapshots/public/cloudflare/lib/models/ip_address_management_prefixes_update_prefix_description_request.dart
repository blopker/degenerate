// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_description.dart';@immutable final class IpAddressManagementPrefixesUpdatePrefixDescriptionRequest {const IpAddressManagementPrefixesUpdatePrefixDescriptionRequest({required this.description});

factory IpAddressManagementPrefixesUpdatePrefixDescriptionRequest.fromJson(Map<String, dynamic> json) { return IpAddressManagementPrefixesUpdatePrefixDescriptionRequest(
  description: AddressingDescription.fromJson(json['description'] as String),
); }

/// Description of the prefix.
final AddressingDescription description;

Map<String, dynamic> toJson() { return {
  'description': description.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description'); } 
IpAddressManagementPrefixesUpdatePrefixDescriptionRequest copyWith({AddressingDescription? description}) { return IpAddressManagementPrefixesUpdatePrefixDescriptionRequest(
  description: description ?? this.description,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IpAddressManagementPrefixesUpdatePrefixDescriptionRequest &&
          description == other.description; } 
@override int get hashCode { return description.hashCode; } 
@override String toString() { return 'IpAddressManagementPrefixesUpdatePrefixDescriptionRequest(description: $description)'; } 
 }
