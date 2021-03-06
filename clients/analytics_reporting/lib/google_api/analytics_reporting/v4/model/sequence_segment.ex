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

defmodule GoogleApi.AnalyticsReporting.V4.Model.SequenceSegment do
  @moduledoc """
  Sequence conditions consist of one or more steps, where each step is defined by one or more dimension/metric conditions. Multiple steps can be combined with special sequence operators.

  ## Attributes

  - firstStepShouldMatchFirstHit (Boolean): If set, first step condition must match the first hit of the visitor (in the date range). Defaults to: `null`.
  - segmentSequenceSteps (List[SegmentSequenceStep]): The list of steps in the sequence. Defaults to: `null`.
  """

  defstruct [
    :"firstStepShouldMatchFirstHit",
    :"segmentSequenceSteps"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.SequenceSegment do
  import GoogleApi.AnalyticsReporting.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"segmentSequenceSteps", :list, GoogleApi.AnalyticsReporting.V4.Model.SegmentSequenceStep, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.SequenceSegment do
  def encode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Deserializer.serialize_non_nil(value, options)
  end
end

