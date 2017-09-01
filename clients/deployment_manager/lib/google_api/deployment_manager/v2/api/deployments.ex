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

defmodule GoogleApi.DeploymentManager.V2.Api.Deployments do
  @moduledoc """
  API calls for all endpoints tagged `Deployments`.
  """

  alias GoogleApi.DeploymentManager.V2.Connection
  import GoogleApi.DeploymentManager.V2.RequestBuilder


  @doc """
  Cancels and removes the preview currently associated with the deployment.

  ## Parameters

  - connection (GoogleApi.DeploymentManager.V2.Connection): Connection to server
  - project (String): The project ID for this request.
  - deployment (String): The name of the deployment for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (DeploymentsCancelPreviewRequest): 

  ## Returns

  {:ok, %GoogleApi.DeploymentManager.V2.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec deploymentmanager_deployments_cancel_preview(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DeploymentManager.V2.Model.Operation.t} | {:error, Tesla.Env.t}
  def deploymentmanager_deployments_cancel_preview(connection, project, deployment, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/#{project}/global/deployments/#{deployment}/cancelPreview")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DeploymentManager.V2.Model.Operation{})
  end

  @doc """
  Deletes a deployment and all of the resources in the deployment.

  ## Parameters

  - connection (GoogleApi.DeploymentManager.V2.Connection): Connection to server
  - project (String): The project ID for this request.
  - deployment (String): The name of the deployment for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :delete_policy (String): Sets the policy to use for deleting resources.

  ## Returns

  {:ok, %GoogleApi.DeploymentManager.V2.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec deploymentmanager_deployments_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DeploymentManager.V2.Model.Operation.t} | {:error, Tesla.Env.t}
  def deploymentmanager_deployments_delete(connection, project, deployment, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"deletePolicy" => :query
    }
    %{}
    |> method(:delete)
    |> url("/#{project}/global/deployments/#{deployment}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DeploymentManager.V2.Model.Operation{})
  end

  @doc """
  Gets information about a specific deployment.

  ## Parameters

  - connection (GoogleApi.DeploymentManager.V2.Connection): Connection to server
  - project (String): The project ID for this request.
  - deployment (String): The name of the deployment for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.DeploymentManager.V2.Model.Deployment{}} on success
  {:error, info} on failure
  """
  @spec deploymentmanager_deployments_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DeploymentManager.V2.Model.Deployment.t} | {:error, Tesla.Env.t}
  def deploymentmanager_deployments_get(connection, project, deployment, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{project}/global/deployments/#{deployment}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DeploymentManager.V2.Model.Deployment{})
  end

  @doc """
  Gets the access control policy for a resource. May be empty if no such policy or resource exists.

  ## Parameters

  - connection (GoogleApi.DeploymentManager.V2.Connection): Connection to server
  - project (String): Project ID for this request.
  - resource (String): Name of the resource for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.DeploymentManager.V2.Model.Policy{}} on success
  {:error, info} on failure
  """
  @spec deploymentmanager_deployments_get_iam_policy(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DeploymentManager.V2.Model.Policy.t} | {:error, Tesla.Env.t}
  def deploymentmanager_deployments_get_iam_policy(connection, project, resource, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{project}/global/deployments/#{resource}/getIamPolicy")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DeploymentManager.V2.Model.Policy{})
  end

  @doc """
  Creates a deployment and all of the resources described by the deployment manifest.

  ## Parameters

  - connection (GoogleApi.DeploymentManager.V2.Connection): Connection to server
  - project (String): The project ID for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :preview (Boolean): If set to true, creates a deployment and creates \&quot;shell\&quot; resources but does not actually instantiate these resources. This allows you to preview what your deployment looks like. After previewing a deployment, you can deploy your resources by making a request with the update() method or you can use the cancelPreview() method to cancel the preview altogether. Note that the deployment will still exist after you cancel the preview and you must separately delete this deployment if you want to remove it.
    - :body (Deployment): 

  ## Returns

  {:ok, %GoogleApi.DeploymentManager.V2.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec deploymentmanager_deployments_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DeploymentManager.V2.Model.Operation.t} | {:error, Tesla.Env.t}
  def deploymentmanager_deployments_insert(connection, project, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"preview" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/#{project}/global/deployments")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DeploymentManager.V2.Model.Operation{})
  end

  @doc """
  Lists all deployments for a given project.

  ## Parameters

  - connection (GoogleApi.DeploymentManager.V2.Connection): Connection to server
  - project (String): The project ID for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :filter (String): Sets a filter {expression} for filtering listed resources. Your {expression} must be in the format: field_name comparison_string literal_string.  The field_name is the name of the field you want to compare. Only atomic field types are supported (string, number, boolean). The comparison_string must be either eq (equals) or ne (not equals). The literal_string is the string value to filter to. The literal value must be valid for the type of field you are filtering by (string, number, boolean). For string fields, the literal value is interpreted as a regular expression using RE2 syntax. The literal value must match the entire field.  For example, to filter for instances that do not have a name of example-instance, you would use name ne example-instance.  You can filter on nested fields. For example, you could filter on instances that have set the scheduling.automaticRestart field to true. Use filtering on nested fields to take advantage of labels to organize and search for results based on label values.  To filter on multiple expressions, provide each separate expression within parentheses. For example, (scheduling.automaticRestart eq true) (zone eq us-central1-f). Multiple expressions are treated as AND expressions, meaning that resources must match all expressions to pass the filters.
    - :max_results (Integer): The maximum number of results per page that should be returned. If the number of available results is larger than maxResults, Compute Engine returns a nextPageToken that can be used to get the next page of results in subsequent list requests. Acceptable values are 0 to 500, inclusive. (Default: 500)
    - :order_by (String): Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name.  You can also sort results in descending order based on the creation timestamp using orderBy&#x3D;\&quot;creationTimestamp desc\&quot;. This sorts results based on the creationTimestamp field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first.  Currently, only sorting by name or creationTimestamp desc is supported.
    - :page_token (String): Specifies a page token to use. Set pageToken to the nextPageToken returned by a previous list request to get the next page of results.

  ## Returns

  {:ok, %GoogleApi.DeploymentManager.V2.Model.DeploymentsListResponse{}} on success
  {:error, info} on failure
  """
  @spec deploymentmanager_deployments_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DeploymentManager.V2.Model.DeploymentsListResponse.t} | {:error, Tesla.Env.t}
  def deploymentmanager_deployments_list(connection, project, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"filter" => :query,
      :"maxResults" => :query,
      :"orderBy" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{project}/global/deployments")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DeploymentManager.V2.Model.DeploymentsListResponse{})
  end

  @doc """
  Updates a deployment and all of the resources described by the deployment manifest. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.DeploymentManager.V2.Connection): Connection to server
  - project (String): The project ID for this request.
  - deployment (String): The name of the deployment for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :create_policy (String): Sets the policy to use for creating new resources.
    - :delete_policy (String): Sets the policy to use for deleting resources.
    - :preview (Boolean): If set to true, updates the deployment and creates and updates the \&quot;shell\&quot; resources but does not actually alter or instantiate these resources. This allows you to preview what your deployment will look like. You can use this intent to preview how an update would affect your deployment. You must provide a target.config with a configuration if this is set to true. After previewing a deployment, you can deploy your resources by making a request with the update() or you can cancelPreview() to remove the preview altogether. Note that the deployment will still exist after you cancel the preview and you must separately delete this deployment if you want to remove it.
    - :body (Deployment): 

  ## Returns

  {:ok, %GoogleApi.DeploymentManager.V2.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec deploymentmanager_deployments_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DeploymentManager.V2.Model.Operation.t} | {:error, Tesla.Env.t}
  def deploymentmanager_deployments_patch(connection, project, deployment, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"createPolicy" => :query,
      :"deletePolicy" => :query,
      :"preview" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/#{project}/global/deployments/#{deployment}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DeploymentManager.V2.Model.Operation{})
  end

  @doc """
  Sets the access control policy on the specified resource. Replaces any existing policy.

  ## Parameters

  - connection (GoogleApi.DeploymentManager.V2.Connection): Connection to server
  - project (String): Project ID for this request.
  - resource (String): Name of the resource for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Policy): 

  ## Returns

  {:ok, %GoogleApi.DeploymentManager.V2.Model.Policy{}} on success
  {:error, info} on failure
  """
  @spec deploymentmanager_deployments_set_iam_policy(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DeploymentManager.V2.Model.Policy.t} | {:error, Tesla.Env.t}
  def deploymentmanager_deployments_set_iam_policy(connection, project, resource, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/#{project}/global/deployments/#{resource}/setIamPolicy")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DeploymentManager.V2.Model.Policy{})
  end

  @doc """
  Stops an ongoing operation. This does not roll back any work that has already been completed, but prevents any new work from being started.

  ## Parameters

  - connection (GoogleApi.DeploymentManager.V2.Connection): Connection to server
  - project (String): The project ID for this request.
  - deployment (String): The name of the deployment for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (DeploymentsStopRequest): 

  ## Returns

  {:ok, %GoogleApi.DeploymentManager.V2.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec deploymentmanager_deployments_stop(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DeploymentManager.V2.Model.Operation.t} | {:error, Tesla.Env.t}
  def deploymentmanager_deployments_stop(connection, project, deployment, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/#{project}/global/deployments/#{deployment}/stop")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DeploymentManager.V2.Model.Operation{})
  end

  @doc """
  Returns permissions that a caller has on the specified resource.

  ## Parameters

  - connection (GoogleApi.DeploymentManager.V2.Connection): Connection to server
  - project (String): Project ID for this request.
  - resource (String): Name of the resource for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (TestPermissionsRequest): 

  ## Returns

  {:ok, %GoogleApi.DeploymentManager.V2.Model.TestPermissionsResponse{}} on success
  {:error, info} on failure
  """
  @spec deploymentmanager_deployments_test_iam_permissions(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DeploymentManager.V2.Model.TestPermissionsResponse.t} | {:error, Tesla.Env.t}
  def deploymentmanager_deployments_test_iam_permissions(connection, project, resource, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/#{project}/global/deployments/#{resource}/testIamPermissions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DeploymentManager.V2.Model.TestPermissionsResponse{})
  end

  @doc """
  Updates a deployment and all of the resources described by the deployment manifest.

  ## Parameters

  - connection (GoogleApi.DeploymentManager.V2.Connection): Connection to server
  - project (String): The project ID for this request.
  - deployment (String): The name of the deployment for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :create_policy (String): Sets the policy to use for creating new resources.
    - :delete_policy (String): Sets the policy to use for deleting resources.
    - :preview (Boolean): If set to true, updates the deployment and creates and updates the \&quot;shell\&quot; resources but does not actually alter or instantiate these resources. This allows you to preview what your deployment will look like. You can use this intent to preview how an update would affect your deployment. You must provide a target.config with a configuration if this is set to true. After previewing a deployment, you can deploy your resources by making a request with the update() or you can cancelPreview() to remove the preview altogether. Note that the deployment will still exist after you cancel the preview and you must separately delete this deployment if you want to remove it.
    - :body (Deployment): 

  ## Returns

  {:ok, %GoogleApi.DeploymentManager.V2.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec deploymentmanager_deployments_update(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DeploymentManager.V2.Model.Operation.t} | {:error, Tesla.Env.t}
  def deploymentmanager_deployments_update(connection, project, deployment, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"createPolicy" => :query,
      :"deletePolicy" => :query,
      :"preview" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/#{project}/global/deployments/#{deployment}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DeploymentManager.V2.Model.Operation{})
  end
end