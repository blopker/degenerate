// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/basic_error.dart';import '../models/blob.dart';import '../models/git_commit.dart';import '../models/git_create_blob_request.dart';import '../models/git_create_commit_request.dart';import '../models/git_create_ref_request.dart';import '../models/git_create_tag_request.dart';import '../models/git_create_tree_request.dart';import '../models/git_ref.dart';import '../models/git_tag.dart';import '../models/git_tree.dart';import '../models/git_update_ref_request.dart';import '../models/short_blob.dart';import '../models/validation_error.dart';/// GitApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class GitApi with ApiExecutor {const GitApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Create a blob
///
/// 
///
/// `POST /repos/{owner}/{repo}/git/blobs`
Future<ApiResult<ShortBlob, BasicError>> gitCreateBlob({required String owner, required String repo, required GitCreateBlobRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/blobs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ShortBlob.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a blob
///
/// The `content` in the response will always be Base64 encoded.
/// 
/// This endpoint supports the following custom media types. For more information, see "[Media types](https://docs.github.com/rest/using-the-rest-api/getting-started-with-the-rest-api#media-types)."
/// 
/// - **`application/vnd.github.raw+json`**: Returns the raw blob data.
/// - **`application/vnd.github+json`**: Returns a JSON representation of the blob with `content` as a base64 encoded string. This is the default if no media type is specified.
/// 
/// **Note** This endpoint supports blobs up to 100 megabytes in size.
///
/// `GET /repos/{owner}/{repo}/git/blobs/{file_sha}`
Future<ApiResult<Blob, BasicError>> gitGetBlob({required String owner, required String repo, required String fileSha, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/blobs/${Uri.encodeComponent(fileSha)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Blob.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a commit
///
/// Creates a new Git [commit object](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects).
/// 
/// **Signature verification object**
/// 
/// The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:
/// 
/// | Name | Type | Description |
/// | ---- | ---- | ----------- |
/// | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. |
/// | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in the table below. |
/// | `signature` | `string` | The signature that was extracted from the commit. |
/// | `payload` | `string` | The value that was signed. |
/// | `verified_at` | `string` | The date the signature was verified by GitHub. |
/// 
/// These are the possible values for `reason` in the `verification` object:
/// 
/// | Value | Description |
/// | ----- | ----------- |
/// | `expired_key` | The key that made the signature is expired. |
/// | `not_signing_key` | The "signing" flag is not among the usage flags in the GPG key that made the signature. |
/// | `gpgverify_error` | There was an error communicating with the signature verification service. |
/// | `gpgverify_unavailable` | The signature verification service is currently unavailable. |
/// | `unsigned` | The object does not include a signature. |
/// | `unknown_signature_type` | A non-PGP signature was found in the commit. |
/// | `no_user` | No user was associated with the `committer` email address in the commit. |
/// | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on their account. |
/// | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. |
/// | `unknown_key` | The key that made the signature has not been registered with any user's account. |
/// | `malformed_signature` | There was an error parsing the signature. |
/// | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. |
/// | `valid` | None of the above errors applied, so the signature is considered to be verified. |
///
/// `POST /repos/{owner}/{repo}/git/commits`
Future<ApiResult<GitCommit, ValidationError>> gitCreateCommit({required String owner, required String repo, required GitCreateCommitRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/commits',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GitCommit.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a commit object
///
/// Gets a Git [commit object](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects).
/// 
/// To get the contents of a commit, see "[Get a commit](/rest/commits/commits#get-a-commit)."
/// 
/// **Signature verification object**
/// 
/// The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:
/// 
/// | Name | Type | Description |
/// | ---- | ---- | ----------- |
/// | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. |
/// | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in the table below. |
/// | `signature` | `string` | The signature that was extracted from the commit. |
/// | `payload` | `string` | The value that was signed. |
/// | `verified_at` | `string` | The date the signature was verified by GitHub. |
/// 
/// These are the possible values for `reason` in the `verification` object:
/// 
/// | Value | Description |
/// | ----- | ----------- |
/// | `expired_key` | The key that made the signature is expired. |
/// | `not_signing_key` | The "signing" flag is not among the usage flags in the GPG key that made the signature. |
/// | `gpgverify_error` | There was an error communicating with the signature verification service. |
/// | `gpgverify_unavailable` | The signature verification service is currently unavailable. |
/// | `unsigned` | The object does not include a signature. |
/// | `unknown_signature_type` | A non-PGP signature was found in the commit. |
/// | `no_user` | No user was associated with the `committer` email address in the commit. |
/// | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on their account. |
/// | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. |
/// | `unknown_key` | The key that made the signature has not been registered with any user's account. |
/// | `malformed_signature` | There was an error parsing the signature. |
/// | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. |
/// | `valid` | None of the above errors applied, so the signature is considered to be verified. |
///
/// `GET /repos/{owner}/{repo}/git/commits/{commit_sha}`
Future<ApiResult<GitCommit, BasicError>> gitGetCommit({required String owner, required String repo, required String commitSha, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/commits/${Uri.encodeComponent(commitSha)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GitCommit.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List matching references
///
/// Returns an array of references from your Git database that match the supplied name. The `:ref` in the URL must be formatted as `heads/<branch name>` for branches and `tags/<tag name>` for tags. If the `:ref` doesn't exist in the repository, but existing refs start with `:ref`, they will be returned as an array.
/// 
/// When you use this endpoint without providing a `:ref`, it will return an array of all the references from your Git database, including notes and stashes if they exist on the server. Anything in the namespace is returned, not just `heads` and `tags`.
/// 
/// > [!NOTE]
/// > You need to explicitly [request a pull request](https://docs.github.com/rest/pulls/pulls#get-a-pull-request) to trigger a test merge commit, which checks the mergeability of pull requests. For more information, see "[Checking mergeability of pull requests](https://docs.github.com/rest/guides/getting-started-with-the-git-database-api#checking-mergeability-of-pull-requests)".
/// 
/// If you request matching references for a branch named `feature` but the branch `feature` doesn't exist, the response can still include other matching head refs that start with the word `feature`, such as `featureA` and `featureB`.
///
/// `GET /repos/{owner}/{repo}/git/matching-refs/{ref}`
Future<ApiResult<List<GitRef>, BasicError>> gitListMatchingRefs({required String owner, required String repo, required String ref, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/matching-refs/${Uri.encodeComponent(ref)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => GitRef.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a reference
///
/// Returns a single reference from your Git database. The `:ref` in the URL must be formatted as `heads/<branch name>` for branches and `tags/<tag name>` for tags. If the `:ref` doesn't match an existing ref, a `404` is returned.
/// 
/// > [!NOTE]
/// > You need to explicitly [request a pull request](https://docs.github.com/rest/pulls/pulls#get-a-pull-request) to trigger a test merge commit, which checks the mergeability of pull requests. For more information, see "[Checking mergeability of pull requests](https://docs.github.com/rest/guides/getting-started-with-the-git-database-api#checking-mergeability-of-pull-requests)".
///
/// `GET /repos/{owner}/{repo}/git/ref/{ref}`
Future<ApiResult<GitRef, BasicError>> gitGetRef({required String owner, required String repo, required String ref, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/ref/${Uri.encodeComponent(ref)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GitRef.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a reference
///
/// Creates a reference for your repository. You are unable to create new references for empty repositories, even if the commit SHA-1 hash used exists. Empty repositories are repositories without branches.
///
/// `POST /repos/{owner}/{repo}/git/refs`
Future<ApiResult<GitRef, ValidationError>> gitCreateRef({required String owner, required String repo, required GitCreateRefRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/refs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GitRef.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a reference
///
/// Updates the provided reference to point to a new SHA. For more information, see "[Git References](https://git-scm.com/book/en/v2/Git-Internals-Git-References)" in the Git documentation.
///
/// `PATCH /repos/{owner}/{repo}/git/refs/{ref}`
Future<ApiResult<GitRef, ValidationError>> gitUpdateRef({required String owner, required String repo, required String ref, required GitUpdateRefRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/refs/${Uri.encodeComponent(ref)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GitRef.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a reference
///
/// Deletes the provided reference.
///
/// `DELETE /repos/{owner}/{repo}/git/refs/{ref}`
Future<ApiResult<void, BasicError>> gitDeleteRef({required String owner, required String repo, required String ref, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/refs/${Uri.encodeComponent(ref)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a tag object
///
/// Note that creating a tag object does not create the reference that makes a tag in Git. If you want to create an annotated tag in Git, you have to do this call to create the tag object, and then [create](https://docs.github.com/rest/git/refs#create-a-reference) the `refs/tags/[tag]` reference. If you want to create a lightweight tag, you only have to [create](https://docs.github.com/rest/git/refs#create-a-reference) the tag reference - this call would be unnecessary.
/// 
/// **Signature verification object**
/// 
/// The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:
/// 
/// | Name | Type | Description |
/// | ---- | ---- | ----------- |
/// | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. |
/// | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. |
/// | `signature` | `string` | The signature that was extracted from the commit. |
/// | `payload` | `string` | The value that was signed. |
/// | `verified_at` | `string` | The date the signature was verified by GitHub. |
/// 
/// These are the possible values for `reason` in the `verification` object:
/// 
/// | Value | Description |
/// | ----- | ----------- |
/// | `expired_key` | The key that made the signature is expired. |
/// | `not_signing_key` | The "signing" flag is not among the usage flags in the GPG key that made the signature. |
/// | `gpgverify_error` | There was an error communicating with the signature verification service. |
/// | `gpgverify_unavailable` | The signature verification service is currently unavailable. |
/// | `unsigned` | The object does not include a signature. |
/// | `unknown_signature_type` | A non-PGP signature was found in the commit. |
/// | `no_user` | No user was associated with the `committer` email address in the commit. |
/// | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on their account. |
/// | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. |
/// | `unknown_key` | The key that made the signature has not been registered with any user's account. |
/// | `malformed_signature` | There was an error parsing the signature. |
/// | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. |
/// | `valid` | None of the above errors applied, so the signature is considered to be verified. |
///
/// `POST /repos/{owner}/{repo}/git/tags`
Future<ApiResult<GitTag, ValidationError>> gitCreateTag({required String owner, required String repo, required GitCreateTagRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/tags',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GitTag.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a tag
///
/// **Signature verification object**
/// 
/// The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:
/// 
/// | Name | Type | Description |
/// | ---- | ---- | ----------- |
/// | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. |
/// | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. |
/// | `signature` | `string` | The signature that was extracted from the commit. |
/// | `payload` | `string` | The value that was signed. |
/// | `verified_at` | `string` | The date the signature was verified by GitHub. |
/// 
/// These are the possible values for `reason` in the `verification` object:
/// 
/// | Value | Description |
/// | ----- | ----------- |
/// | `expired_key` | The key that made the signature is expired. |
/// | `not_signing_key` | The "signing" flag is not among the usage flags in the GPG key that made the signature. |
/// | `gpgverify_error` | There was an error communicating with the signature verification service. |
/// | `gpgverify_unavailable` | The signature verification service is currently unavailable. |
/// | `unsigned` | The object does not include a signature. |
/// | `unknown_signature_type` | A non-PGP signature was found in the commit. |
/// | `no_user` | No user was associated with the `committer` email address in the commit. |
/// | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on their account. |
/// | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. |
/// | `unknown_key` | The key that made the signature has not been registered with any user's account. |
/// | `malformed_signature` | There was an error parsing the signature. |
/// | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. |
/// | `valid` | None of the above errors applied, so the signature is considered to be verified. |
///
/// `GET /repos/{owner}/{repo}/git/tags/{tag_sha}`
Future<ApiResult<GitTag, BasicError>> gitGetTag({required String owner, required String repo, required String tagSha, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/tags/${Uri.encodeComponent(tagSha)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GitTag.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a tree
///
/// The tree creation API accepts nested entries. If you specify both a tree and a nested path modifying that tree, this endpoint will overwrite the contents of the tree with the new path contents, and create a new tree structure.
/// 
/// If you use this endpoint to add, delete, or modify the file contents in a tree, you will need to commit the tree and then update a branch to point to the commit. For more information see "[Create a commit](https://docs.github.com/rest/git/commits#create-a-commit)" and "[Update a reference](https://docs.github.com/rest/git/refs#update-a-reference)."
/// 
/// Returns an error if you try to delete a file that does not exist.
///
/// `POST /repos/{owner}/{repo}/git/trees`
Future<ApiResult<GitTree, ValidationError>> gitCreateTree({required String owner, required String repo, required GitCreateTreeRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/trees',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GitTree.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a tree
///
/// Returns a single tree using the SHA1 value or ref name for that tree.
/// 
/// If `truncated` is `true` in the response then the number of items in the `tree` array exceeded our maximum limit. If you need to fetch more items, use the non-recursive method of fetching trees, and fetch one sub-tree at a time.
/// 
/// > [!NOTE]
/// > The limit for the `tree` array is 100,000 entries with a maximum size of 7 MB when using the `recursive` parameter.
///
/// `GET /repos/{owner}/{repo}/git/trees/{tree_sha}`
Future<ApiResult<GitTree, ValidationError>> gitGetTree({required String owner, required String repo, required String treeSha, String? recursive, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (recursive != null) {
  queryParameters['recursive'] = recursive;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/git/trees/${Uri.encodeComponent(treeSha)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GitTree.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
