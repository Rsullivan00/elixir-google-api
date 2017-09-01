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

defmodule GoogleApi.AnalyticsReporting.V4.Model.CohortGroup do
  @moduledoc """
  Defines a cohort group. For example:      \&quot;cohortGroup\&quot;: {       \&quot;cohorts\&quot;: [{         \&quot;name\&quot;: \&quot;cohort 1\&quot;,         \&quot;type\&quot;: \&quot;FIRST_VISIT_DATE\&quot;,         \&quot;dateRange\&quot;: { \&quot;startDate\&quot;: \&quot;2015-08-01\&quot;, \&quot;endDate\&quot;: \&quot;2015-08-01\&quot; }       },{         \&quot;name\&quot;: \&quot;cohort 2\&quot;          \&quot;type\&quot;: \&quot;FIRST_VISIT_DATE\&quot;          \&quot;dateRange\&quot;: { \&quot;startDate\&quot;: \&quot;2015-07-01\&quot;, \&quot;endDate\&quot;: \&quot;2015-07-01\&quot; }       }]     }
  """

  @derive [Poison.Encoder]
  defstruct [
    :"cohorts",
    :"lifetimeValue"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.CohortGroup do
  import GoogleApi.AnalyticsReporting.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"cohorts", :list, GoogleApi.AnalyticsReporting.V4.Model.Cohort, options)
  end
end

