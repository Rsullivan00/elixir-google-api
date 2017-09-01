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

defmodule GoogleApi.TagManager.V2.Model.Tag do
  @moduledoc """
  Represents a Google Tag Manager Tag.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"accountId",
    :"blockingRuleId",
    :"blockingTriggerId",
    :"containerId",
    :"fingerprint",
    :"firingRuleId",
    :"firingTriggerId",
    :"liveOnly",
    :"name",
    :"notes",
    :"parameter",
    :"parentFolderId",
    :"path",
    :"priority",
    :"scheduleEndMs",
    :"scheduleStartMs",
    :"setupTag",
    :"tagFiringOption",
    :"tagId",
    :"tagManagerUrl",
    :"teardownTag",
    :"type",
    :"workspaceId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.Tag do
  import GoogleApi.TagManager.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"parameter", :list, GoogleApi.TagManager.V2.Model.Parameter, options)
    |> deserialize(:"priority", :struct, GoogleApi.TagManager.V2.Model.Parameter, options)
    |> deserialize(:"setupTag", :list, GoogleApi.TagManager.V2.Model.SetupTag, options)
    |> deserialize(:"teardownTag", :list, GoogleApi.TagManager.V2.Model.TeardownTag, options)
  end
end

