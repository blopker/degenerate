// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPackagePublishedPackagePackageVersionNpmMetadata {const WebhookPackagePublishedPackagePackageVersionNpmMetadata({this.homepage, this.version, this.npmUser, this.author = const Omittable.absent(), this.bugs = const Omittable.absent(), this.dependencies, this.devDependencies, this.peerDependencies, this.optionalDependencies, this.description, this.dist = const Omittable.absent(), this.gitHead, this.name, this.license, this.main, this.repository = const Omittable.absent(), this.scripts, this.id, this.nodeVersion, this.npmVersion, this.hasShrinkwrap, this.maintainers, this.contributors, this.engines, this.deletedById, this.files, this.bin, this.man, this.directories = const Omittable.absent(), this.os, this.cpu, this.readme, this.installationCommand, this.releaseId, this.commitOid, this.publishedViaActions, this.keywords, });

factory WebhookPackagePublishedPackagePackageVersionNpmMetadata.fromJson(Map<String, dynamic> json) { return WebhookPackagePublishedPackagePackageVersionNpmMetadata(
  name: json['name'] as String?,
  version: json['version'] as String?,
  npmUser: json['npm_user'] as String?,
  author: json.containsKey('author') ? Omittable(json['author'] as Map<String, dynamic>?) : const Omittable.absent(),
  bugs: json.containsKey('bugs') ? Omittable(json['bugs'] as Map<String, dynamic>?) : const Omittable.absent(),
  dependencies: json['dependencies'] as Map<String, dynamic>?,
  devDependencies: json['dev_dependencies'] as Map<String, dynamic>?,
  peerDependencies: json['peer_dependencies'] as Map<String, dynamic>?,
  optionalDependencies: json['optional_dependencies'] as Map<String, dynamic>?,
  description: json['description'] as String?,
  dist: json.containsKey('dist') ? Omittable(json['dist'] as Map<String, dynamic>?) : const Omittable.absent(),
  gitHead: json['git_head'] as String?,
  homepage: json['homepage'] as String?,
  license: json['license'] as String?,
  main: json['main'] as String?,
  repository: json.containsKey('repository') ? Omittable(json['repository'] as Map<String, dynamic>?) : const Omittable.absent(),
  scripts: json['scripts'] as Map<String, dynamic>?,
  id: json['id'] as String?,
  nodeVersion: json['node_version'] as String?,
  npmVersion: json['npm_version'] as String?,
  hasShrinkwrap: json['has_shrinkwrap'] as bool?,
  maintainers: (json['maintainers'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList(),
  contributors: (json['contributors'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList(),
  engines: json['engines'] as Map<String, dynamic>?,
  keywords: (json['keywords'] as List<dynamic>?)?.map((e) => e as String).toList(),
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
  bin: json['bin'] as Map<String, dynamic>?,
  man: json['man'] as Map<String, dynamic>?,
  directories: json.containsKey('directories') ? Omittable(json['directories'] as Map<String, dynamic>?) : const Omittable.absent(),
  os: (json['os'] as List<dynamic>?)?.map((e) => e as String).toList(),
  cpu: (json['cpu'] as List<dynamic>?)?.map((e) => e as String).toList(),
  readme: json['readme'] as String?,
  installationCommand: json['installation_command'] as String?,
  releaseId: json['release_id'] != null ? (json['release_id'] as num).toInt() : null,
  commitOid: json['commit_oid'] as String?,
  publishedViaActions: json['published_via_actions'] as bool?,
  deletedById: json['deleted_by_id'] != null ? (json['deleted_by_id'] as num).toInt() : null,
); }

final String? name;

final String? version;

final String? npmUser;

final Omittable<Map<String,dynamic>?> author;

final Omittable<Map<String,dynamic>?> bugs;

final Map<String,dynamic>? dependencies;

final Map<String,dynamic>? devDependencies;

final Map<String,dynamic>? peerDependencies;

final Map<String,dynamic>? optionalDependencies;

final String? description;

final Omittable<Map<String,dynamic>?> dist;

final String? gitHead;

final String? homepage;

final String? license;

final String? main;

final Omittable<Map<String,dynamic>?> repository;

final Map<String,dynamic>? scripts;

final String? id;

final String? nodeVersion;

final String? npmVersion;

final bool? hasShrinkwrap;

final List<Map<String,dynamic>>? maintainers;

final List<Map<String,dynamic>>? contributors;

final Map<String,dynamic>? engines;

final List<String>? keywords;

final List<String>? files;

final Map<String,dynamic>? bin;

final Map<String,dynamic>? man;

final Omittable<Map<String,dynamic>?> directories;

final List<String>? os;

final List<String>? cpu;

final String? readme;

final String? installationCommand;

final int? releaseId;

final String? commitOid;

final bool? publishedViaActions;

final int? deletedById;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'version': ?version,
  'npm_user': ?npmUser,
  if (author.isPresent) 'author': author.value,
  if (bugs.isPresent) 'bugs': bugs.value,
  'dependencies': ?dependencies,
  'dev_dependencies': ?devDependencies,
  'peer_dependencies': ?peerDependencies,
  'optional_dependencies': ?optionalDependencies,
  'description': ?description,
  if (dist.isPresent) 'dist': dist.value,
  'git_head': ?gitHead,
  'homepage': ?homepage,
  'license': ?license,
  'main': ?main,
  if (repository.isPresent) 'repository': repository.value,
  'scripts': ?scripts,
  'id': ?id,
  'node_version': ?nodeVersion,
  'npm_version': ?npmVersion,
  'has_shrinkwrap': ?hasShrinkwrap,
  if (maintainers != null) 'maintainers': maintainers?.map((e) => e).toList(),
  if (contributors != null) 'contributors': contributors?.map((e) => e).toList(),
  'engines': ?engines,
  'keywords': ?keywords,
  'files': ?files,
  'bin': ?bin,
  'man': ?man,
  if (directories.isPresent) 'directories': directories.value,
  'os': ?os,
  'cpu': ?cpu,
  'readme': ?readme,
  'installation_command': ?installationCommand,
  'release_id': ?releaseId,
  'commit_oid': ?commitOid,
  'published_via_actions': ?publishedViaActions,
  'deleted_by_id': ?deletedById,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'version', 'npm_user', 'author', 'bugs', 'dependencies', 'dev_dependencies', 'peer_dependencies', 'optional_dependencies', 'description', 'dist', 'git_head', 'homepage', 'license', 'main', 'repository', 'scripts', 'id', 'node_version', 'npm_version', 'has_shrinkwrap', 'maintainers', 'contributors', 'engines', 'keywords', 'files', 'bin', 'man', 'directories', 'os', 'cpu', 'readme', 'installation_command', 'release_id', 'commit_oid', 'published_via_actions', 'deleted_by_id'}.contains(key)); } 
WebhookPackagePublishedPackagePackageVersionNpmMetadata copyWith({String? Function()? name, String? Function()? version, String? Function()? npmUser, Omittable<Map<String,dynamic>?>? author, Omittable<Map<String,dynamic>?>? bugs, Map<String, dynamic>? Function()? dependencies, Map<String, dynamic>? Function()? devDependencies, Map<String, dynamic>? Function()? peerDependencies, Map<String, dynamic>? Function()? optionalDependencies, String? Function()? description, Omittable<Map<String,dynamic>?>? dist, String? Function()? gitHead, String? Function()? homepage, String? Function()? license, String? Function()? main, Omittable<Map<String,dynamic>?>? repository, Map<String, dynamic>? Function()? scripts, String? Function()? id, String? Function()? nodeVersion, String? Function()? npmVersion, bool? Function()? hasShrinkwrap, List<Map<String, dynamic>>? Function()? maintainers, List<Map<String, dynamic>>? Function()? contributors, Map<String, dynamic>? Function()? engines, List<String>? Function()? keywords, List<String>? Function()? files, Map<String, dynamic>? Function()? bin, Map<String, dynamic>? Function()? man, Omittable<Map<String,dynamic>?>? directories, List<String>? Function()? os, List<String>? Function()? cpu, String? Function()? readme, String? Function()? installationCommand, int? Function()? releaseId, String? Function()? commitOid, bool? Function()? publishedViaActions, int? Function()? deletedById, }) { return WebhookPackagePublishedPackagePackageVersionNpmMetadata(
  name: name != null ? name() : this.name,
  version: version != null ? version() : this.version,
  npmUser: npmUser != null ? npmUser() : this.npmUser,
  author: author ?? this.author,
  bugs: bugs ?? this.bugs,
  dependencies: dependencies != null ? dependencies() : this.dependencies,
  devDependencies: devDependencies != null ? devDependencies() : this.devDependencies,
  peerDependencies: peerDependencies != null ? peerDependencies() : this.peerDependencies,
  optionalDependencies: optionalDependencies != null ? optionalDependencies() : this.optionalDependencies,
  description: description != null ? description() : this.description,
  dist: dist ?? this.dist,
  gitHead: gitHead != null ? gitHead() : this.gitHead,
  homepage: homepage != null ? homepage() : this.homepage,
  license: license != null ? license() : this.license,
  main: main != null ? main() : this.main,
  repository: repository ?? this.repository,
  scripts: scripts != null ? scripts() : this.scripts,
  id: id != null ? id() : this.id,
  nodeVersion: nodeVersion != null ? nodeVersion() : this.nodeVersion,
  npmVersion: npmVersion != null ? npmVersion() : this.npmVersion,
  hasShrinkwrap: hasShrinkwrap != null ? hasShrinkwrap() : this.hasShrinkwrap,
  maintainers: maintainers != null ? maintainers() : this.maintainers,
  contributors: contributors != null ? contributors() : this.contributors,
  engines: engines != null ? engines() : this.engines,
  keywords: keywords != null ? keywords() : this.keywords,
  files: files != null ? files() : this.files,
  bin: bin != null ? bin() : this.bin,
  man: man != null ? man() : this.man,
  directories: directories ?? this.directories,
  os: os != null ? os() : this.os,
  cpu: cpu != null ? cpu() : this.cpu,
  readme: readme != null ? readme() : this.readme,
  installationCommand: installationCommand != null ? installationCommand() : this.installationCommand,
  releaseId: releaseId != null ? releaseId() : this.releaseId,
  commitOid: commitOid != null ? commitOid() : this.commitOid,
  publishedViaActions: publishedViaActions != null ? publishedViaActions() : this.publishedViaActions,
  deletedById: deletedById != null ? deletedById() : this.deletedById,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPackagePublishedPackagePackageVersionNpmMetadata &&
          name == other.name &&
          version == other.version &&
          npmUser == other.npmUser &&
          author == other.author &&
          bugs == other.bugs &&
          dependencies == other.dependencies &&
          devDependencies == other.devDependencies &&
          peerDependencies == other.peerDependencies &&
          optionalDependencies == other.optionalDependencies &&
          description == other.description &&
          dist == other.dist &&
          gitHead == other.gitHead &&
          homepage == other.homepage &&
          license == other.license &&
          main == other.main &&
          repository == other.repository &&
          scripts == other.scripts &&
          id == other.id &&
          nodeVersion == other.nodeVersion &&
          npmVersion == other.npmVersion &&
          hasShrinkwrap == other.hasShrinkwrap &&
          listEquals(maintainers, other.maintainers) &&
          listEquals(contributors, other.contributors) &&
          engines == other.engines &&
          listEquals(keywords, other.keywords) &&
          listEquals(files, other.files) &&
          bin == other.bin &&
          man == other.man &&
          directories == other.directories &&
          listEquals(os, other.os) &&
          listEquals(cpu, other.cpu) &&
          readme == other.readme &&
          installationCommand == other.installationCommand &&
          releaseId == other.releaseId &&
          commitOid == other.commitOid &&
          publishedViaActions == other.publishedViaActions &&
          deletedById == other.deletedById; } 
@override int get hashCode { return Object.hashAll([name, version, npmUser, author, bugs, dependencies, devDependencies, peerDependencies, optionalDependencies, description, dist, gitHead, homepage, license, main, repository, scripts, id, nodeVersion, npmVersion, hasShrinkwrap, Object.hashAll(maintainers ?? const []), Object.hashAll(contributors ?? const []), engines, Object.hashAll(keywords ?? const []), Object.hashAll(files ?? const []), bin, man, directories, Object.hashAll(os ?? const []), Object.hashAll(cpu ?? const []), readme, installationCommand, releaseId, commitOid, publishedViaActions, deletedById]); } 
@override String toString() { return 'WebhookPackagePublishedPackagePackageVersionNpmMetadata(name: $name, version: $version, npmUser: $npmUser, author: $author, bugs: $bugs, dependencies: $dependencies, devDependencies: $devDependencies, peerDependencies: $peerDependencies, optionalDependencies: $optionalDependencies, description: $description, dist: $dist, gitHead: $gitHead, homepage: $homepage, license: $license, main: $main, repository: $repository, scripts: $scripts, id: $id, nodeVersion: $nodeVersion, npmVersion: $npmVersion, hasShrinkwrap: $hasShrinkwrap, maintainers: $maintainers, contributors: $contributors, engines: $engines, keywords: $keywords, files: $files, bin: $bin, man: $man, directories: $directories, os: $os, cpu: $cpu, readme: $readme, installationCommand: $installationCommand, releaseId: $releaseId, commitOid: $commitOid, publishedViaActions: $publishedViaActions, deletedById: $deletedById)'; } 
 }
