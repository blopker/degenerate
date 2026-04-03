// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_of_conduct_simple.dart';import 'community_health_file.dart';import 'license_simple.dart';@immutable final class CommunityProfileFiles {const CommunityProfileFiles({required this.codeOfConduct, required this.codeOfConductFile, required this.license, required this.contributing, required this.readme, required this.issueTemplate, required this.pullRequestTemplate, });

factory CommunityProfileFiles.fromJson(Map<String, dynamic> json) { return CommunityProfileFiles(
  codeOfConduct: json['code_of_conduct'] != null ? CodeOfConductSimple.fromJson(json['code_of_conduct'] as Map<String, dynamic>) : null,
  codeOfConductFile: json['code_of_conduct_file'] != null ? CommunityHealthFile.fromJson(json['code_of_conduct_file'] as Map<String, dynamic>) : null,
  license: json['license'] != null ? LicenseSimple.fromJson(json['license'] as Map<String, dynamic>) : null,
  contributing: json['contributing'] != null ? CommunityHealthFile.fromJson(json['contributing'] as Map<String, dynamic>) : null,
  readme: json['readme'] != null ? CommunityHealthFile.fromJson(json['readme'] as Map<String, dynamic>) : null,
  issueTemplate: json['issue_template'] != null ? CommunityHealthFile.fromJson(json['issue_template'] as Map<String, dynamic>) : null,
  pullRequestTemplate: json['pull_request_template'] != null ? CommunityHealthFile.fromJson(json['pull_request_template'] as Map<String, dynamic>) : null,
); }

final CodeOfConductSimple? codeOfConduct;

final CommunityHealthFile? codeOfConductFile;

final LicenseSimple? license;

final CommunityHealthFile? contributing;

final CommunityHealthFile? readme;

final CommunityHealthFile? issueTemplate;

final CommunityHealthFile? pullRequestTemplate;

Map<String, dynamic> toJson() { return {
  if (codeOfConduct != null) 'code_of_conduct': codeOfConduct?.toJson(),
  if (codeOfConductFile != null) 'code_of_conduct_file': codeOfConductFile?.toJson(),
  if (license != null) 'license': license?.toJson(),
  if (contributing != null) 'contributing': contributing?.toJson(),
  if (readme != null) 'readme': readme?.toJson(),
  if (issueTemplate != null) 'issue_template': issueTemplate?.toJson(),
  if (pullRequestTemplate != null) 'pull_request_template': pullRequestTemplate?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code_of_conduct') &&
      json.containsKey('code_of_conduct_file') &&
      json.containsKey('license') &&
      json.containsKey('contributing') &&
      json.containsKey('readme') &&
      json.containsKey('issue_template') &&
      json.containsKey('pull_request_template'); } 
CommunityProfileFiles copyWith({CodeOfConductSimple? Function()? codeOfConduct, CommunityHealthFile? Function()? codeOfConductFile, LicenseSimple? Function()? license, CommunityHealthFile? Function()? contributing, CommunityHealthFile? Function()? readme, CommunityHealthFile? Function()? issueTemplate, CommunityHealthFile? Function()? pullRequestTemplate, }) { return CommunityProfileFiles(
  codeOfConduct: codeOfConduct != null ? codeOfConduct() : this.codeOfConduct,
  codeOfConductFile: codeOfConductFile != null ? codeOfConductFile() : this.codeOfConductFile,
  license: license != null ? license() : this.license,
  contributing: contributing != null ? contributing() : this.contributing,
  readme: readme != null ? readme() : this.readme,
  issueTemplate: issueTemplate != null ? issueTemplate() : this.issueTemplate,
  pullRequestTemplate: pullRequestTemplate != null ? pullRequestTemplate() : this.pullRequestTemplate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CommunityProfileFiles &&
          codeOfConduct == other.codeOfConduct &&
          codeOfConductFile == other.codeOfConductFile &&
          license == other.license &&
          contributing == other.contributing &&
          readme == other.readme &&
          issueTemplate == other.issueTemplate &&
          pullRequestTemplate == other.pullRequestTemplate; } 
@override int get hashCode { return Object.hash(codeOfConduct, codeOfConductFile, license, contributing, readme, issueTemplate, pullRequestTemplate); } 
@override String toString() { return 'CommunityProfileFiles(codeOfConduct: $codeOfConduct, codeOfConductFile: $codeOfConductFile, license: $license, contributing: $contributing, readme: $readme, issueTemplate: $issueTemplate, pullRequestTemplate: $pullRequestTemplate)'; } 
 }
