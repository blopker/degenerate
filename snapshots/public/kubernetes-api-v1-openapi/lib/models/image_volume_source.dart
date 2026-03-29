// GENERATED CODE - DO NOT MODIFY BY HAND

/// ImageVolumeSource represents a image volume resource.
final class ImageVolumeSource {const ImageVolumeSource({this.pullPolicy, this.reference, });

factory ImageVolumeSource.fromJson(Map<String, dynamic> json) { return ImageVolumeSource(
  pullPolicy: json['pullPolicy'] as String?,
  reference: json['reference'] as String?,
); }

/// Policy for pulling OCI objects. Possible values are: Always: the kubelet always attempts to pull the reference. Container creation will fail If the pull fails. Never: the kubelet never pulls the reference and only uses a local image or artifact. Container creation will fail if the reference isn't present. IfNotPresent: the kubelet pulls if the reference isn't already present on disk. Container creation will fail if the reference isn't present and the pull fails. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise.
final String? pullPolicy;

/// Required: Image or artifact reference to be used. Behaves in the same way as pod.spec.containers[*].image. Pull secrets will be assembled in the same way as for the container image by looking up node credentials, SA image pull secrets, and pod spec image pull secrets. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.
final String? reference;

Map<String, dynamic> toJson() { return {
  'pullPolicy': ?pullPolicy,
  'reference': ?reference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pullPolicy', 'reference'}.contains(key)); } 
ImageVolumeSource copyWith({String Function()? pullPolicy, String Function()? reference, }) { return ImageVolumeSource(
  pullPolicy: pullPolicy != null ? pullPolicy() : this.pullPolicy,
  reference: reference != null ? reference() : this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImageVolumeSource &&
          pullPolicy == other.pullPolicy &&
          reference == other.reference; } 
@override int get hashCode { return Object.hash(pullPolicy, reference); } 
@override String toString() { return 'ImageVolumeSource(pullPolicy: $pullPolicy, reference: $reference)'; } 
 }
