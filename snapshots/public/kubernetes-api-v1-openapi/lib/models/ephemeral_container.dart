// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'container_port.dart';import 'container_resize_policy.dart';import 'container_restart_rule.dart';import 'env_from_source.dart';import 'env_var.dart';import 'lifecycle.dart';import 'probe.dart';import 'resource_requirements.dart';import 'security_context.dart';import 'volume_device.dart';import 'volume_mount.dart';/// An EphemeralContainer is a temporary container that you may add to an existing Pod for user-initiated activities such as debugging. Ephemeral containers have no resource or scheduling guarantees, and they will not be restarted when they exit or when a Pod is removed or restarted. The kubelet may evict a Pod if an ephemeral container causes the Pod to exceed its resource allocation.
/// 
/// To add an ephemeral container, use the ephemeralcontainers subresource of an existing Pod. Ephemeral containers may not be removed or restarted.
@immutable final class EphemeralContainer {const EphemeralContainer({this.args, this.command, this.env, this.envFrom, this.image, this.imagePullPolicy, this.lifecycle, this.livenessProbe, this.name = '', this.ports, this.readinessProbe, this.resizePolicy, this.resources, this.restartPolicy, this.restartPolicyRules, this.securityContext, this.startupProbe, this.stdin, this.stdinOnce, this.targetContainerName, this.terminationMessagePath, this.terminationMessagePolicy, this.tty, this.volumeDevices, this.volumeMounts, this.workingDir, });

factory EphemeralContainer.fromJson(Map<String, dynamic> json) { return EphemeralContainer(
  args: (json['args'] as List<dynamic>?)?.map((e) => e as String).toList(),
  command: (json['command'] as List<dynamic>?)?.map((e) => e as String).toList(),
  env: (json['env'] as List<dynamic>?)?.map((e) => EnvVar.fromJson(e as Map<String, dynamic>)).toList(),
  envFrom: (json['envFrom'] as List<dynamic>?)?.map((e) => EnvFromSource.fromJson(e as Map<String, dynamic>)).toList(),
  image: json['image'] as String?,
  imagePullPolicy: json['imagePullPolicy'] as String?,
  lifecycle: json['lifecycle'] != null ? Lifecycle.fromJson(json['lifecycle'] as Map<String, dynamic>) : null,
  livenessProbe: json['livenessProbe'] != null ? Probe.fromJson(json['livenessProbe'] as Map<String, dynamic>) : null,
  name: json['name'] as String,
  ports: (json['ports'] as List<dynamic>?)?.map((e) => ContainerPort.fromJson(e as Map<String, dynamic>)).toList(),
  readinessProbe: json['readinessProbe'] != null ? Probe.fromJson(json['readinessProbe'] as Map<String, dynamic>) : null,
  resizePolicy: (json['resizePolicy'] as List<dynamic>?)?.map((e) => ContainerResizePolicy.fromJson(e as Map<String, dynamic>)).toList(),
  resources: json['resources'] != null ? ResourceRequirements.fromJson(json['resources'] as Map<String, dynamic>) : null,
  restartPolicy: json['restartPolicy'] as String?,
  restartPolicyRules: (json['restartPolicyRules'] as List<dynamic>?)?.map((e) => ContainerRestartRule.fromJson(e as Map<String, dynamic>)).toList(),
  securityContext: json['securityContext'] != null ? SecurityContext.fromJson(json['securityContext'] as Map<String, dynamic>) : null,
  startupProbe: json['startupProbe'] != null ? Probe.fromJson(json['startupProbe'] as Map<String, dynamic>) : null,
  stdin: json['stdin'] as bool?,
  stdinOnce: json['stdinOnce'] as bool?,
  targetContainerName: json['targetContainerName'] as String?,
  terminationMessagePath: json['terminationMessagePath'] as String?,
  terminationMessagePolicy: json['terminationMessagePolicy'] as String?,
  tty: json['tty'] as bool?,
  volumeDevices: (json['volumeDevices'] as List<dynamic>?)?.map((e) => VolumeDevice.fromJson(e as Map<String, dynamic>)).toList(),
  volumeMounts: (json['volumeMounts'] as List<dynamic>?)?.map((e) => VolumeMount.fromJson(e as Map<String, dynamic>)).toList(),
  workingDir: json['workingDir'] as String?,
); }

/// Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
final List<String>? args;

/// Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
final List<String>? command;

/// List of environment variables to set in the container. Cannot be updated.
final List<EnvVar>? env;

/// List of sources to populate environment variables in the container. The keys defined within a source may consist of any printable ASCII characters except '='. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
final List<EnvFromSource>? envFrom;

/// Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
final String? image;

/// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
final String? imagePullPolicy;

/// Lifecycle is not allowed for ephemeral containers.
final Lifecycle? lifecycle;

/// Probes are not allowed for ephemeral containers.
final Probe? livenessProbe;

/// Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
final String name;

/// Ports are not allowed for ephemeral containers.
final List<ContainerPort>? ports;

/// Probes are not allowed for ephemeral containers.
final Probe? readinessProbe;

/// Resources resize policy for the container.
final List<ContainerResizePolicy>? resizePolicy;

/// Resources are not allowed for ephemeral containers. Ephemeral containers use spare resources already allocated to the pod.
final ResourceRequirements? resources;

/// Restart policy for the container to manage the restart behavior of each container within a pod. You cannot set this field on ephemeral containers.
final String? restartPolicy;

/// Represents a list of rules to be checked to determine if the container should be restarted on exit. You cannot set this field on ephemeral containers.
final List<ContainerRestartRule>? restartPolicyRules;

/// Optional: SecurityContext defines the security options the ephemeral container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext.
final SecurityContext? securityContext;

/// Probes are not allowed for ephemeral containers.
final Probe? startupProbe;

/// Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
final bool? stdin;

/// Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
final bool? stdinOnce;

/// If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container uses the namespaces configured in the Pod spec.
/// 
/// The container runtime must implement support for this feature. If the runtime does not support namespace targeting then the result of setting this field is undefined.
final String? targetContainerName;

/// Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
final String? terminationMessagePath;

/// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
final String? terminationMessagePolicy;

/// Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
final bool? tty;

/// volumeDevices is the list of block devices to be used by the container.
final List<VolumeDevice>? volumeDevices;

/// Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated.
final List<VolumeMount>? volumeMounts;

/// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
final String? workingDir;

Map<String, dynamic> toJson() { return {
  'args': ?args,
  'command': ?command,
  if (env != null) 'env': env?.map((e) => e.toJson()).toList(),
  if (envFrom != null) 'envFrom': envFrom?.map((e) => e.toJson()).toList(),
  'image': ?image,
  'imagePullPolicy': ?imagePullPolicy,
  if (lifecycle != null) 'lifecycle': lifecycle?.toJson(),
  if (livenessProbe != null) 'livenessProbe': livenessProbe?.toJson(),
  'name': name,
  if (ports != null) 'ports': ports?.map((e) => e.toJson()).toList(),
  if (readinessProbe != null) 'readinessProbe': readinessProbe?.toJson(),
  if (resizePolicy != null) 'resizePolicy': resizePolicy?.map((e) => e.toJson()).toList(),
  if (resources != null) 'resources': resources?.toJson(),
  'restartPolicy': ?restartPolicy,
  if (restartPolicyRules != null) 'restartPolicyRules': restartPolicyRules?.map((e) => e.toJson()).toList(),
  if (securityContext != null) 'securityContext': securityContext?.toJson(),
  if (startupProbe != null) 'startupProbe': startupProbe?.toJson(),
  'stdin': ?stdin,
  'stdinOnce': ?stdinOnce,
  'targetContainerName': ?targetContainerName,
  'terminationMessagePath': ?terminationMessagePath,
  'terminationMessagePolicy': ?terminationMessagePolicy,
  'tty': ?tty,
  if (volumeDevices != null) 'volumeDevices': volumeDevices?.map((e) => e.toJson()).toList(),
  if (volumeMounts != null) 'volumeMounts': volumeMounts?.map((e) => e.toJson()).toList(),
  'workingDir': ?workingDir,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
EphemeralContainer copyWith({List<String> Function()? args, List<String> Function()? command, List<EnvVar> Function()? env, List<EnvFromSource> Function()? envFrom, String Function()? image, String Function()? imagePullPolicy, Lifecycle Function()? lifecycle, Probe Function()? livenessProbe, String? name, List<ContainerPort> Function()? ports, Probe Function()? readinessProbe, List<ContainerResizePolicy> Function()? resizePolicy, ResourceRequirements Function()? resources, String Function()? restartPolicy, List<ContainerRestartRule> Function()? restartPolicyRules, SecurityContext Function()? securityContext, Probe Function()? startupProbe, bool Function()? stdin, bool Function()? stdinOnce, String Function()? targetContainerName, String Function()? terminationMessagePath, String Function()? terminationMessagePolicy, bool Function()? tty, List<VolumeDevice> Function()? volumeDevices, List<VolumeMount> Function()? volumeMounts, String Function()? workingDir, }) { return EphemeralContainer(
  args: args != null ? args() : this.args,
  command: command != null ? command() : this.command,
  env: env != null ? env() : this.env,
  envFrom: envFrom != null ? envFrom() : this.envFrom,
  image: image != null ? image() : this.image,
  imagePullPolicy: imagePullPolicy != null ? imagePullPolicy() : this.imagePullPolicy,
  lifecycle: lifecycle != null ? lifecycle() : this.lifecycle,
  livenessProbe: livenessProbe != null ? livenessProbe() : this.livenessProbe,
  name: name ?? this.name,
  ports: ports != null ? ports() : this.ports,
  readinessProbe: readinessProbe != null ? readinessProbe() : this.readinessProbe,
  resizePolicy: resizePolicy != null ? resizePolicy() : this.resizePolicy,
  resources: resources != null ? resources() : this.resources,
  restartPolicy: restartPolicy != null ? restartPolicy() : this.restartPolicy,
  restartPolicyRules: restartPolicyRules != null ? restartPolicyRules() : this.restartPolicyRules,
  securityContext: securityContext != null ? securityContext() : this.securityContext,
  startupProbe: startupProbe != null ? startupProbe() : this.startupProbe,
  stdin: stdin != null ? stdin() : this.stdin,
  stdinOnce: stdinOnce != null ? stdinOnce() : this.stdinOnce,
  targetContainerName: targetContainerName != null ? targetContainerName() : this.targetContainerName,
  terminationMessagePath: terminationMessagePath != null ? terminationMessagePath() : this.terminationMessagePath,
  terminationMessagePolicy: terminationMessagePolicy != null ? terminationMessagePolicy() : this.terminationMessagePolicy,
  tty: tty != null ? tty() : this.tty,
  volumeDevices: volumeDevices != null ? volumeDevices() : this.volumeDevices,
  volumeMounts: volumeMounts != null ? volumeMounts() : this.volumeMounts,
  workingDir: workingDir != null ? workingDir() : this.workingDir,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EphemeralContainer &&
          listEquals(args, other.args) &&
          listEquals(command, other.command) &&
          listEquals(env, other.env) &&
          listEquals(envFrom, other.envFrom) &&
          image == other.image &&
          imagePullPolicy == other.imagePullPolicy &&
          lifecycle == other.lifecycle &&
          livenessProbe == other.livenessProbe &&
          name == other.name &&
          listEquals(ports, other.ports) &&
          readinessProbe == other.readinessProbe &&
          listEquals(resizePolicy, other.resizePolicy) &&
          resources == other.resources &&
          restartPolicy == other.restartPolicy &&
          listEquals(restartPolicyRules, other.restartPolicyRules) &&
          securityContext == other.securityContext &&
          startupProbe == other.startupProbe &&
          stdin == other.stdin &&
          stdinOnce == other.stdinOnce &&
          targetContainerName == other.targetContainerName &&
          terminationMessagePath == other.terminationMessagePath &&
          terminationMessagePolicy == other.terminationMessagePolicy &&
          tty == other.tty &&
          listEquals(volumeDevices, other.volumeDevices) &&
          listEquals(volumeMounts, other.volumeMounts) &&
          workingDir == other.workingDir; } 
@override int get hashCode { return Object.hashAll([Object.hashAll(args ?? const []), Object.hashAll(command ?? const []), Object.hashAll(env ?? const []), Object.hashAll(envFrom ?? const []), image, imagePullPolicy, lifecycle, livenessProbe, name, Object.hashAll(ports ?? const []), readinessProbe, Object.hashAll(resizePolicy ?? const []), resources, restartPolicy, Object.hashAll(restartPolicyRules ?? const []), securityContext, startupProbe, stdin, stdinOnce, targetContainerName, terminationMessagePath, terminationMessagePolicy, tty, Object.hashAll(volumeDevices ?? const []), Object.hashAll(volumeMounts ?? const []), workingDir]); } 
@override String toString() { return 'EphemeralContainer(args: $args, command: $command, env: $env, envFrom: $envFrom, image: $image, imagePullPolicy: $imagePullPolicy, lifecycle: $lifecycle, livenessProbe: $livenessProbe, name: $name, ports: $ports, readinessProbe: $readinessProbe, resizePolicy: $resizePolicy, resources: $resources, restartPolicy: $restartPolicy, restartPolicyRules: $restartPolicyRules, securityContext: $securityContext, startupProbe: $startupProbe, stdin: $stdin, stdinOnce: $stdinOnce, targetContainerName: $targetContainerName, terminationMessagePath: $terminationMessagePath, terminationMessagePolicy: $terminationMessagePolicy, tty: $tty, volumeDevices: $volumeDevices, volumeMounts: $volumeMounts, workingDir: $workingDir)'; } 
 }
