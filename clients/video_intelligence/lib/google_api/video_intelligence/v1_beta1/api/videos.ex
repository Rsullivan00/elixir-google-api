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

defmodule GoogleApi.VideoIntelligence.V1BETA1.Api.Videos do
  @moduledoc """
  API calls for all endpoints tagged `Videos`.
  """

  alias GoogleApi.VideoIntelligence.V1BETA1.Connection
  import GoogleApi.VideoIntelligence.V1BETA1.RequestBuilder


  @doc """
  Performs asynchronous video annotation. Progress and results can be retrieved through the &#x60;google.longrunning.Operations&#x60; interface. &#x60;Operation.metadata&#x60; contains &#x60;AnnotateVideoProgress&#x60; (progress). &#x60;Operation.response&#x60; contains &#x60;AnnotateVideoResponse&#x60; (results).

  ## Parameters

  - connection (GoogleApi.VideoIntelligence.V1BETA1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :body (GoogleCloudVideointelligenceV1beta1_AnnotateVideoRequest): 

  ## Returns

  {:ok, %GoogleApi.VideoIntelligence.V1BETA1.Model.GoogleLongrunning_Operation{}} on success
  {:error, info} on failure
  """
  @spec videointelligence_videos_annotate(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.VideoIntelligence.V1BETA1.Model.GoogleLongrunning_Operation.t} | {:error, Tesla.Env.t}
  def videointelligence_videos_annotate(connection, opts \\ []) do
    optional_params = %{
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"uploadType" => :query,
      :"fields" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1beta1/videos:annotate")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.VideoIntelligence.V1BETA1.Model.GoogleLongrunning_Operation{})
  end
end