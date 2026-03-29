// GENERATED CODE - DO NOT MODIFY BY HAND

import 'gelato_verified_outputs.dart';/// The user’s verified data.
final class IdentityVerificationSessionVerifiedOutputs {const IdentityVerificationSessionVerifiedOutputs({this.gelatoVerifiedOutputs});

factory IdentityVerificationSessionVerifiedOutputs.fromJson(Map<String, dynamic> json) { return IdentityVerificationSessionVerifiedOutputs(
  gelatoVerifiedOutputs: GelatoVerifiedOutputs.canParse(json) ? GelatoVerifiedOutputs.fromJson(json) : null,
); }

final GelatoVerifiedOutputs? gelatoVerifiedOutputs;

/// At least one variant must be present.
bool get isValid { return gelatoVerifiedOutputs != null; } 
Map<String, dynamic> toJson() { return {
  ...?gelatoVerifiedOutputs?.toJson(),
}; } 
 }
