// GENERATED CODE - DO NOT MODIFY BY HAND

final class ImportProjectChoices {const ImportProjectChoices({this.vcs, this.tfvcProject, this.humanName, });

factory ImportProjectChoices.fromJson(Map<String, dynamic> json) { return ImportProjectChoices(
  vcs: json['vcs'] as String?,
  tfvcProject: json['tfvc_project'] as String?,
  humanName: json['human_name'] as String?,
); }

final String? vcs;

final String? tfvcProject;

final String? humanName;

Map<String, dynamic> toJson() { return {
  'vcs': ?vcs,
  'tfvc_project': ?tfvcProject,
  'human_name': ?humanName,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ImportProjectChoices copyWith({String Function()? vcs, String Function()? tfvcProject, String Function()? humanName, }) { return ImportProjectChoices(
  vcs: vcs != null ? vcs() : this.vcs,
  tfvcProject: tfvcProject != null ? tfvcProject() : this.tfvcProject,
  humanName: humanName != null ? humanName() : this.humanName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImportProjectChoices &&
          vcs == other.vcs &&
          tfvcProject == other.tfvcProject &&
          humanName == other.humanName; } 
@override int get hashCode { return Object.hash(vcs, tfvcProject, humanName); } 
@override String toString() { return 'ImportProjectChoices(vcs: $vcs, tfvcProject: $tfvcProject, humanName: $humanName)'; } 
 }
