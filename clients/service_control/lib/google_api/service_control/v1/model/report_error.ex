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

defmodule GoogleApi.ServiceControl.V1.Model.ReportError do
  @moduledoc """
  Represents the processing error of one Operation in the request.

  ## Attributes

  - operationId (String): The Operation.operation_id value from the request. Defaults to: `null`.
  - status (Status): Details of the error when processing the Operation. Defaults to: `null`.
  """

  defstruct [
    :"operationId",
    :"status"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.ReportError do
  import GoogleApi.ServiceControl.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"status", :struct, GoogleApi.ServiceControl.V1.Model.Status, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.ReportError do
  def encode(value, options) do
    GoogleApi.ServiceControl.V1.Deserializer.serialize_non_nil(value, options)
  end
end

