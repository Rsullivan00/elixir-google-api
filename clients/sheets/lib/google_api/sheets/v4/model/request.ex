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

defmodule GoogleApi.Sheets.V4.Model.Request do
  @moduledoc """
  A single kind of update to apply to a spreadsheet.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"addBanding",
    :"addChart",
    :"addConditionalFormatRule",
    :"addFilterView",
    :"addNamedRange",
    :"addProtectedRange",
    :"addSheet",
    :"appendCells",
    :"appendDimension",
    :"autoFill",
    :"autoResizeDimensions",
    :"clearBasicFilter",
    :"copyPaste",
    :"cutPaste",
    :"deleteBanding",
    :"deleteConditionalFormatRule",
    :"deleteDimension",
    :"deleteEmbeddedObject",
    :"deleteFilterView",
    :"deleteNamedRange",
    :"deleteProtectedRange",
    :"deleteRange",
    :"deleteSheet",
    :"duplicateFilterView",
    :"duplicateSheet",
    :"findReplace",
    :"insertDimension",
    :"insertRange",
    :"mergeCells",
    :"moveDimension",
    :"pasteData",
    :"randomizeRange",
    :"repeatCell",
    :"setBasicFilter",
    :"setDataValidation",
    :"sortRange",
    :"textToColumns",
    :"unmergeCells",
    :"updateBanding",
    :"updateBorders",
    :"updateCells",
    :"updateChartSpec",
    :"updateConditionalFormatRule",
    :"updateDimensionProperties",
    :"updateEmbeddedObjectPosition",
    :"updateFilterView",
    :"updateNamedRange",
    :"updateProtectedRange",
    :"updateSheetProperties",
    :"updateSpreadsheetProperties"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.Request do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"addBanding", :struct, GoogleApi.Sheets.V4.Model.AddBandingRequest, options)
    |> deserialize(:"addChart", :struct, GoogleApi.Sheets.V4.Model.AddChartRequest, options)
    |> deserialize(:"addConditionalFormatRule", :struct, GoogleApi.Sheets.V4.Model.AddConditionalFormatRuleRequest, options)
    |> deserialize(:"addFilterView", :struct, GoogleApi.Sheets.V4.Model.AddFilterViewRequest, options)
    |> deserialize(:"addNamedRange", :struct, GoogleApi.Sheets.V4.Model.AddNamedRangeRequest, options)
    |> deserialize(:"addProtectedRange", :struct, GoogleApi.Sheets.V4.Model.AddProtectedRangeRequest, options)
    |> deserialize(:"addSheet", :struct, GoogleApi.Sheets.V4.Model.AddSheetRequest, options)
    |> deserialize(:"appendCells", :struct, GoogleApi.Sheets.V4.Model.AppendCellsRequest, options)
    |> deserialize(:"appendDimension", :struct, GoogleApi.Sheets.V4.Model.AppendDimensionRequest, options)
    |> deserialize(:"autoFill", :struct, GoogleApi.Sheets.V4.Model.AutoFillRequest, options)
    |> deserialize(:"autoResizeDimensions", :struct, GoogleApi.Sheets.V4.Model.AutoResizeDimensionsRequest, options)
    |> deserialize(:"clearBasicFilter", :struct, GoogleApi.Sheets.V4.Model.ClearBasicFilterRequest, options)
    |> deserialize(:"copyPaste", :struct, GoogleApi.Sheets.V4.Model.CopyPasteRequest, options)
    |> deserialize(:"cutPaste", :struct, GoogleApi.Sheets.V4.Model.CutPasteRequest, options)
    |> deserialize(:"deleteBanding", :struct, GoogleApi.Sheets.V4.Model.DeleteBandingRequest, options)
    |> deserialize(:"deleteConditionalFormatRule", :struct, GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleRequest, options)
    |> deserialize(:"deleteDimension", :struct, GoogleApi.Sheets.V4.Model.DeleteDimensionRequest, options)
    |> deserialize(:"deleteEmbeddedObject", :struct, GoogleApi.Sheets.V4.Model.DeleteEmbeddedObjectRequest, options)
    |> deserialize(:"deleteFilterView", :struct, GoogleApi.Sheets.V4.Model.DeleteFilterViewRequest, options)
    |> deserialize(:"deleteNamedRange", :struct, GoogleApi.Sheets.V4.Model.DeleteNamedRangeRequest, options)
    |> deserialize(:"deleteProtectedRange", :struct, GoogleApi.Sheets.V4.Model.DeleteProtectedRangeRequest, options)
    |> deserialize(:"deleteRange", :struct, GoogleApi.Sheets.V4.Model.DeleteRangeRequest, options)
    |> deserialize(:"deleteSheet", :struct, GoogleApi.Sheets.V4.Model.DeleteSheetRequest, options)
    |> deserialize(:"duplicateFilterView", :struct, GoogleApi.Sheets.V4.Model.DuplicateFilterViewRequest, options)
    |> deserialize(:"duplicateSheet", :struct, GoogleApi.Sheets.V4.Model.DuplicateSheetRequest, options)
    |> deserialize(:"findReplace", :struct, GoogleApi.Sheets.V4.Model.FindReplaceRequest, options)
    |> deserialize(:"insertDimension", :struct, GoogleApi.Sheets.V4.Model.InsertDimensionRequest, options)
    |> deserialize(:"insertRange", :struct, GoogleApi.Sheets.V4.Model.InsertRangeRequest, options)
    |> deserialize(:"mergeCells", :struct, GoogleApi.Sheets.V4.Model.MergeCellsRequest, options)
    |> deserialize(:"moveDimension", :struct, GoogleApi.Sheets.V4.Model.MoveDimensionRequest, options)
    |> deserialize(:"pasteData", :struct, GoogleApi.Sheets.V4.Model.PasteDataRequest, options)
    |> deserialize(:"randomizeRange", :struct, GoogleApi.Sheets.V4.Model.RandomizeRangeRequest, options)
    |> deserialize(:"repeatCell", :struct, GoogleApi.Sheets.V4.Model.RepeatCellRequest, options)
    |> deserialize(:"setBasicFilter", :struct, GoogleApi.Sheets.V4.Model.SetBasicFilterRequest, options)
    |> deserialize(:"setDataValidation", :struct, GoogleApi.Sheets.V4.Model.SetDataValidationRequest, options)
    |> deserialize(:"sortRange", :struct, GoogleApi.Sheets.V4.Model.SortRangeRequest, options)
    |> deserialize(:"textToColumns", :struct, GoogleApi.Sheets.V4.Model.TextToColumnsRequest, options)
    |> deserialize(:"unmergeCells", :struct, GoogleApi.Sheets.V4.Model.UnmergeCellsRequest, options)
    |> deserialize(:"updateBanding", :struct, GoogleApi.Sheets.V4.Model.UpdateBandingRequest, options)
    |> deserialize(:"updateBorders", :struct, GoogleApi.Sheets.V4.Model.UpdateBordersRequest, options)
    |> deserialize(:"updateCells", :struct, GoogleApi.Sheets.V4.Model.UpdateCellsRequest, options)
    |> deserialize(:"updateChartSpec", :struct, GoogleApi.Sheets.V4.Model.UpdateChartSpecRequest, options)
    |> deserialize(:"updateConditionalFormatRule", :struct, GoogleApi.Sheets.V4.Model.UpdateConditionalFormatRuleRequest, options)
    |> deserialize(:"updateDimensionProperties", :struct, GoogleApi.Sheets.V4.Model.UpdateDimensionPropertiesRequest, options)
    |> deserialize(:"updateEmbeddedObjectPosition", :struct, GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionRequest, options)
    |> deserialize(:"updateFilterView", :struct, GoogleApi.Sheets.V4.Model.UpdateFilterViewRequest, options)
    |> deserialize(:"updateNamedRange", :struct, GoogleApi.Sheets.V4.Model.UpdateNamedRangeRequest, options)
    |> deserialize(:"updateProtectedRange", :struct, GoogleApi.Sheets.V4.Model.UpdateProtectedRangeRequest, options)
    |> deserialize(:"updateSheetProperties", :struct, GoogleApi.Sheets.V4.Model.UpdateSheetPropertiesRequest, options)
    |> deserialize(:"updateSpreadsheetProperties", :struct, GoogleApi.Sheets.V4.Model.UpdateSpreadsheetPropertiesRequest, options)
  end
end

