// GENERATED CODE - DO NOT MODIFY BY HAND

import 'gelato_provided_details.dart';/// Details provided about the user being verified. These details may be shown to the user.
final class IdentityVerificationSessionProvidedDetails {const IdentityVerificationSessionProvidedDetails({this.gelatoProvidedDetails});

factory IdentityVerificationSessionProvidedDetails.fromJson(Map<String, dynamic> json) { return IdentityVerificationSessionProvidedDetails(
  gelatoProvidedDetails: GelatoProvidedDetails.canParse(json) ? GelatoProvidedDetails.fromJson(json) : null,
); }

final GelatoProvidedDetails? gelatoProvidedDetails;

/// At least one variant must be present.
bool get isValid { return gelatoProvidedDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?gelatoProvidedDetails?.toJson(),
}; } 
 }
