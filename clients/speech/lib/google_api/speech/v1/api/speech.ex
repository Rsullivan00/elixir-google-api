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

defmodule GoogleApi.Speech.V1.Api.Speech do
  @moduledoc """
  API calls for all endpoints tagged `Speech`.
  """

  alias GoogleApi.Speech.V1.Connection
  import GoogleApi.Speech.V1.RequestBuilder


  @doc """
  Performs asynchronous speech recognition: receive results via the google.longrunning.Operations interface. Returns either an &#x60;Operation.error&#x60; or an &#x60;Operation.response&#x60; which contains a &#x60;LongRunningRecognizeResponse&#x60; message.

  ## Parameters

  - connection (GoogleApi.Speech.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (boolean()): Pretty-print response.
    - :bearer_token (String.t): OAuth bearer token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :body (LongRunningRecognizeRequest): 

  ## Returns

  {:ok, %GoogleApi.Speech.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec speech_speech_longrunningrecognize(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Speech.V1.Model.Operation.t} | {:error, Tesla.Env.t}
  def speech_speech_longrunningrecognize(connection, opts \\ []) do
    optional_params = %{
      :"fields" => :query,
      :"uploadType" => :query,
      :"callback" => :query,
      :"$.xgafv" => :query,
      :"alt" => :query,
      :"access_token" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1p1beta1/speech:longrunningrecognize")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Speech.V1.Model.Operation{})
  end

  @doc """
  Performs synchronous speech recognition: receive results after all audio has been sent and processed.

  ## Parameters

  - connection (GoogleApi.Speech.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (boolean()): Pretty-print response.
    - :bearer_token (String.t): OAuth bearer token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :body (RecognizeRequest): 

  ## Returns

  {:ok, %GoogleApi.Speech.V1.Model.RecognizeResponse{}} on success
  {:error, info} on failure
  """
  @spec speech_speech_recognize(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Speech.V1.Model.RecognizeResponse.t} | {:error, Tesla.Env.t}
  def speech_speech_recognize(connection, opts \\ []) do
    optional_params = %{
      :"fields" => :query,
      :"uploadType" => :query,
      :"callback" => :query,
      :"$.xgafv" => :query,
      :"alt" => :query,
      :"access_token" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1p1beta1/speech:recognize")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Speech.V1.Model.RecognizeResponse{})
  end
end
