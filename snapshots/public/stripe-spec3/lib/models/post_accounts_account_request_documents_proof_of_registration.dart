// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_request_documents_proof_of_registration_signer.dart';@immutable final class PostAccountsAccountRequestDocumentsProofOfRegistration {const PostAccountsAccountRequestDocumentsProofOfRegistration({this.files, this.signer, });

factory PostAccountsAccountRequestDocumentsProofOfRegistration.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestDocumentsProofOfRegistration(
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
  signer: json['signer'] != null ? PostAccountsAccountRequestDocumentsProofOfRegistrationSigner.fromJson(json['signer'] as Map<String, dynamic>) : null,
); }

final List<String>? files;

final PostAccountsAccountRequestDocumentsProofOfRegistrationSigner? signer;

Map<String, dynamic> toJson() { return {
  'files': ?files,
  if (signer != null) 'signer': signer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'files', 'signer'}.contains(key)); } 
PostAccountsAccountRequestDocumentsProofOfRegistration copyWith({List<String> Function()? files, PostAccountsAccountRequestDocumentsProofOfRegistrationSigner Function()? signer, }) { return PostAccountsAccountRequestDocumentsProofOfRegistration(
  files: files != null ? files() : this.files,
  signer: signer != null ? signer() : this.signer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestDocumentsProofOfRegistration &&
          listEquals(files, other.files) &&
          signer == other.signer; } 
@override int get hashCode { return Object.hash(Object.hashAll(files ?? const []), signer); } 
@override String toString() { return 'PostAccountsAccountRequestDocumentsProofOfRegistration(files: $files, signer: $signer)'; } 
 }
