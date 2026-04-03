// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_request_documents_proof_of_ultimate_beneficial_ownership_signer.dart';@immutable final class PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnership {const PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnership({this.files, this.signer, });

factory PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnership.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnership(
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
  signer: json['signer'] != null ? PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnershipSigner.fromJson(json['signer'] as Map<String, dynamic>) : null,
); }

final List<String>? files;

final PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnershipSigner? signer;

Map<String, dynamic> toJson() { return {
  'files': ?files,
  if (signer != null) 'signer': signer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'files', 'signer'}.contains(key)); } 
PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnership copyWith({List<String> Function()? files, PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnershipSigner Function()? signer, }) { return PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnership(
  files: files != null ? files() : this.files,
  signer: signer != null ? signer() : this.signer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnership &&
          listEquals(files, other.files) &&
          signer == other.signer; } 
@override int get hashCode { return Object.hash(Object.hashAll(files ?? const []), signer); } 
@override String toString() { return 'PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnership(files: $files, signer: $signer)'; } 
 }
