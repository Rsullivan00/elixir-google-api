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

defmodule GoogleApi.Speech.V1.Model.RecognitionMetadata do
  @moduledoc """
  Description of audio data to be recognized.

  ## Attributes

  - audioTopic (String.t): Description of the content. Eg. \&quot;Recordings of federal supreme court hearings from 2012\&quot;. Defaults to: `null`.
  - industryNaicsCodeOfAudio (integer()): The industry vertical to which this speech recognition request most closely applies. This is most indicative of the topics contained in the audio.  Use the 6-digit NAICS code to identify the industry vertical - see https://www.naics.com/search/. Defaults to: `null`.
  - interactionType (String.t): The use case most closely describing the audio content to be recognized. Defaults to: `null`.
    - Enum - one of [INTERACTION_TYPE_UNSPECIFIED, DISCUSSION, PRESENTATION, PHONE_CALL, VOICEMAIL, PROFESSIONALLY_PRODUCED, VOICE_SEARCH, VOICE_COMMAND, DICTATION]
  - microphoneDistance (String.t): The audio type that most closely describes the audio being recognized. Defaults to: `null`.
    - Enum - one of [MICROPHONE_DISTANCE_UNSPECIFIED, NEARFIELD, MIDFIELD, FARFIELD]
  - obfuscatedId (String.t): Obfuscated (privacy-protected) ID of the user, to identify number of unique users using the service. Defaults to: `null`.
  - originalMediaType (String.t): The original media the speech was recorded on. Defaults to: `null`.
    - Enum - one of [ORIGINAL_MEDIA_TYPE_UNSPECIFIED, AUDIO, VIDEO]
  - originalMimeType (String.t): Mime type of the original audio file.  For example &#x60;audio/m4a&#x60;, &#x60;audio/x-alaw-basic&#x60;, &#x60;audio/mp3&#x60;, &#x60;audio/3gpp&#x60;. A list of possible audio mime types is maintained at http://www.iana.org/assignments/media-types/media-types.xhtml#audio Defaults to: `null`.
  - recordingDeviceName (String.t): The device used to make the recording.  Examples &#39;Nexus 5X&#39; or &#39;Polycom SoundStation IP 6000&#39; or &#39;POTS&#39; or &#39;VoIP&#39; or &#39;Cardioid Microphone&#39;. Defaults to: `null`.
  - recordingDeviceType (String.t): The type of device the speech was recorded with. Defaults to: `null`.
    - Enum - one of [RECORDING_DEVICE_TYPE_UNSPECIFIED, SMARTPHONE, PC, PHONE_LINE, VEHICLE, OTHER_OUTDOOR_DEVICE, OTHER_INDOOR_DEVICE]
  """

  defstruct [
    :"audioTopic",
    :"industryNaicsCodeOfAudio",
    :"interactionType",
    :"microphoneDistance",
    :"obfuscatedId",
    :"originalMediaType",
    :"originalMimeType",
    :"recordingDeviceName",
    :"recordingDeviceType"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.RecognitionMetadata do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.RecognitionMetadata do
  def encode(value, options) do
    GoogleApi.Speech.V1.Deserializer.serialize_non_nil(value, options)
  end
end
