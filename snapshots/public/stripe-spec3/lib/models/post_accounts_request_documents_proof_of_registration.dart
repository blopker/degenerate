// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_request_documents_proof_of_registration_signer.dart';final class PostAccountsRequestDocumentsProofOfRegistration {const PostAccountsRequestDocumentsProofOfRegistration({this.files, this.signer, });

factory PostAccountsRequestDocumentsProofOfRegistration.fromJson(Map<String, dynamic> json) { return PostAccountsRequestDocumentsProofOfRegistration(
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
  signer: json['signer'] != null ? PostAccountsRequestDocumentsProofOfRegistrationSigner.fromJson(json['signer'] as Map<String, dynamic>) : null,
); }

final List<String>? files;

final PostAccountsRequestDocumentsProofOfRegistrationSigner? signer;

Map<String, dynamic> toJson() { return {
  'files': ?files,
  if (signer != null) 'signer': signer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'files', 'signer'}.contains(key)); } 
PostAccountsRequestDocumentsProofOfRegistration copyWith({List<String> Function()? files, PostAccountsRequestDocumentsProofOfRegistrationSigner Function()? signer, }) { return PostAccountsRequestDocumentsProofOfRegistration(
  files: files != null ? files() : this.files,
  signer: signer != null ? signer() : this.signer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestDocumentsProofOfRegistration &&
          listEquals(files, other.files) &&
          signer == other.signer; } 
@override int get hashCode { return Object.hash(Object.hashAll(files ?? const []), signer); } 
@override String toString() { return 'PostAccountsRequestDocumentsProofOfRegistration(files: $files, signer: $signer)'; } 
 }
