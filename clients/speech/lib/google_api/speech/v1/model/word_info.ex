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

defmodule GoogleApi.Speech.V1.Model.WordInfo do
  @moduledoc """
  Word-specific information for recognized words.

  ## Attributes

  - endTime (String.t): Output only. Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if &#x60;enable_word_time_offsets&#x3D;true&#x60; and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary. Defaults to: `null`.
  - startTime (String.t): Output only. Time offset relative to the beginning of the audio, and corresponding to the start of the spoken word. This field is only set if &#x60;enable_word_time_offsets&#x3D;true&#x60; and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary. Defaults to: `null`.
  - word (String.t): Output only. The word corresponding to this set of information. Defaults to: `null`.
  """

  defstruct [
    :"endTime",
    :"startTime",
    :"word"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.WordInfo do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.WordInfo do
  def encode(value, options) do
    GoogleApi.Speech.V1.Deserializer.serialize_non_nil(value, options)
  end
end

