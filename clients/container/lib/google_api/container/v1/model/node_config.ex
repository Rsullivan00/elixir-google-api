# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Container.V1.Model.NodeConfig do
  @moduledoc """
  Parameters that describe the nodes in a cluster.

  ## Attributes

  - tags (List[String]): The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster or node pool creation. Each tag within the list must comply with RFC1035. Defaults to: `null`.
  - accelerators (List[AcceleratorConfig]): A list of hardware accelerators to be attached to each node. See https://cloud.google.com/compute/docs/gpus for more information about support for GPUs. Defaults to: `null`.
  - diskSizeGb (Integer): Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.  If unspecified, the default disk size is 100GB. Defaults to: `null`.
  - imageType (String): The image type to use for this node. Note that for a given image type, the latest version of it will be used. Defaults to: `null`.
  - labels (Map[String, String]): The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it&#39;s best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: http://kubernetes.io/v1.1/docs/user-guide/labels.html Defaults to: `null`.
  - localSsdCount (Integer): The number of local SSD disks to be attached to the node.  The limit for this value is dependant upon the maximum number of disks available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd#local_ssd_limits for more information. Defaults to: `null`.
  - machineType (String): The name of a Google Compute Engine [machine type](/compute/docs/machine-types) (e.g. &#x60;n1-standard-1&#x60;).  If unspecified, the default machine type is &#x60;n1-standard-1&#x60;. Defaults to: `null`.
  - metadata (Map[String, String]): The metadata key/value pairs assigned to instances in the cluster.  Keys must conform to the regexp [a-zA-Z0-9-_]+ and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the four reserved keys: \&quot;instance-template\&quot;, \&quot;kube-env\&quot;, \&quot;startup-script\&quot;, and \&quot;user-data\&quot;  Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value&#39;s size must be less than or equal to 32 KB.  The total size of all keys and values must be less than 512 KB. Defaults to: `null`.
  - oauthScopes (List[String]): The set of Google API scopes to be made available on all of the node VMs under the \&quot;default\&quot; service account.  The following scopes are recommended, but not required, and by default are not included:  * &#x60;https://www.googleapis.com/auth/compute&#x60; is required for mounting persistent storage on your nodes. * &#x60;https://www.googleapis.com/auth/devstorage.read_only&#x60; is required for communicating with **gcr.io** (the [Google Container Registry](/container-registry/)).  If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added. Defaults to: `null`.
  - preemptible (Boolean): Whether the nodes are created as preemptible VM instances. See: https://cloud.google.com/compute/docs/instances/preemptible for more information about preemptible VM instances. Defaults to: `null`.
  - serviceAccount (String): The Google Cloud Platform Service Account to be used by the node VMs. If no Service Account is specified, the \&quot;default\&quot; service account is used. Defaults to: `null`.
  """

  defstruct [
    :"tags",
    :"accelerators",
    :"diskSizeGb",
    :"imageType",
    :"labels",
    :"localSsdCount",
    :"machineType",
    :"metadata",
    :"oauthScopes",
    :"preemptible",
    :"serviceAccount"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.NodeConfig do
  import GoogleApi.Container.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"accelerators", :list, GoogleApi.Container.V1.Model.AcceleratorConfig, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.NodeConfig do
  def encode(value, options) do
    GoogleApi.Container.V1.Deserializer.serialize_non_nil(value, options)
  end
end

