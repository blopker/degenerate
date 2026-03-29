// GENERATED CODE - DO NOT MODIFY BY HAND

/// The originating VCS type. Without this parameter, the import job will take additional time to detect the VCS type before beginning the import. This detection step will be reflected in the response.
final class MigrationsStartImportRequestVcs {const MigrationsStartImportRequestVcs._(this.value);

factory MigrationsStartImportRequestVcs.fromJson(String json) { return switch (json) {
  'subversion' => subversion,
  'git' => git,
  'mercurial' => mercurial,
  'tfvc' => tfvc,
  _ => MigrationsStartImportRequestVcs._(json),
}; }

static const MigrationsStartImportRequestVcs subversion = MigrationsStartImportRequestVcs._('subversion');

static const MigrationsStartImportRequestVcs git = MigrationsStartImportRequestVcs._('git');

static const MigrationsStartImportRequestVcs mercurial = MigrationsStartImportRequestVcs._('mercurial');

static const MigrationsStartImportRequestVcs tfvc = MigrationsStartImportRequestVcs._('tfvc');

static const List<MigrationsStartImportRequestVcs> values = [subversion, git, mercurial, tfvc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsStartImportRequestVcs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MigrationsStartImportRequestVcs($value)'; } 
 }
final class MigrationsStartImportRequest {const MigrationsStartImportRequest({required this.vcsUrl, this.vcs, this.vcsUsername, this.vcsPassword, this.tfvcProject, });

factory MigrationsStartImportRequest.fromJson(Map<String, dynamic> json) { return MigrationsStartImportRequest(
  vcsUrl: json['vcs_url'] as String,
  vcs: json['vcs'] != null ? MigrationsStartImportRequestVcs.fromJson(json['vcs'] as String) : null,
  vcsUsername: json['vcs_username'] as String?,
  vcsPassword: json['vcs_password'] as String?,
  tfvcProject: json['tfvc_project'] as String?,
); }

/// The URL of the originating repository.
final String vcsUrl;

/// The originating VCS type. Without this parameter, the import job will take additional time to detect the VCS type before beginning the import. This detection step will be reflected in the response.
final MigrationsStartImportRequestVcs? vcs;

/// If authentication is required, the username to provide to `vcs_url`.
final String? vcsUsername;

/// If authentication is required, the password to provide to `vcs_url`.
final String? vcsPassword;

/// For a tfvc import, the name of the project that is being imported.
final String? tfvcProject;

Map<String, dynamic> toJson() { return {
  'vcs_url': vcsUrl,
  if (vcs != null) 'vcs': vcs?.toJson(),
  'vcs_username': ?vcsUsername,
  'vcs_password': ?vcsPassword,
  'tfvc_project': ?tfvcProject,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('vcs_url') && json['vcs_url'] is String; } 
MigrationsStartImportRequest copyWith({String? vcsUrl, MigrationsStartImportRequestVcs Function()? vcs, String Function()? vcsUsername, String Function()? vcsPassword, String Function()? tfvcProject, }) { return MigrationsStartImportRequest(
  vcsUrl: vcsUrl ?? this.vcsUrl,
  vcs: vcs != null ? vcs() : this.vcs,
  vcsUsername: vcsUsername != null ? vcsUsername() : this.vcsUsername,
  vcsPassword: vcsPassword != null ? vcsPassword() : this.vcsPassword,
  tfvcProject: tfvcProject != null ? tfvcProject() : this.tfvcProject,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MigrationsStartImportRequest &&
          vcsUrl == other.vcsUrl &&
          vcs == other.vcs &&
          vcsUsername == other.vcsUsername &&
          vcsPassword == other.vcsPassword &&
          tfvcProject == other.tfvcProject; } 
@override int get hashCode { return Object.hash(vcsUrl, vcs, vcsUsername, vcsPassword, tfvcProject); } 
@override String toString() { return 'MigrationsStartImportRequest(vcsUrl: $vcsUrl, vcs: $vcs, vcsUsername: $vcsUsername, vcsPassword: $vcsPassword, tfvcProject: $tfvcProject)'; } 
 }
