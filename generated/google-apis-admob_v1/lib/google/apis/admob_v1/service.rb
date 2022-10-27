# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module AdmobV1
      # AdMob API
      #
      # The AdMob API allows publishers to programmatically get information about
      #  their AdMob account.
      #
      # @example
      #    require 'google/apis/admob_v1'
      #
      #    Admob = Google::Apis::AdmobV1 # Alias the module
      #    service = Admob::AdMobService.new
      #
      # @see https://developers.google.com/admob/api/
      class AdMobService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://admob.googleapis.com/', '',
                client_name: 'google-apis-admob_v1',
                client_version: Google::Apis::AdmobV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets information about the specified AdMob publisher account.
        # @param [String] name
        #   Resource name of the publisher account to retrieve. Example: accounts/pub-
        #   9876543210987654
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1::PublisherAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1::PublisherAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AdmobV1::PublisherAccount::Representation
          command.response_class = Google::Apis::AdmobV1::PublisherAccount
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the AdMob publisher account that was most recently signed in to from the
        # AdMob UI. For more information, see https://support.google.com/admob/answer/
        # 10243672.
        # @param [Fixnum] page_size
        #   Maximum number of accounts to return.
        # @param [String] page_token
        #   The value returned by the last `ListPublisherAccountsResponse`; indicates that
        #   this is a continuation of a prior `ListPublisherAccounts` call, and that the
        #   system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1::ListPublisherAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1::ListPublisherAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/accounts', options)
          command.response_representation = Google::Apis::AdmobV1::ListPublisherAccountsResponse::Representation
          command.response_class = Google::Apis::AdmobV1::ListPublisherAccountsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the ad units under the specified AdMob account.
        # @param [String] parent
        #   Required. Resource name of the account to list ad units for. Example: accounts/
        #   pub-9876543210987654
        # @param [Fixnum] page_size
        #   The maximum number of ad units to return. If unspecified or 0, at most 10,000
        #   ad units will be returned. The maximum value is 20,000; values above 20,000
        #   will be coerced to 20,000.
        # @param [String] page_token
        #   The value returned by the last `ListAdUnitsResponse`; indicates that this is a
        #   continuation of a prior `ListAdUnits` call, and that the system should return
        #   the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1::ListAdUnitsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1::ListAdUnitsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_ad_units(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/adUnits', options)
          command.response_representation = Google::Apis::AdmobV1::ListAdUnitsResponse::Representation
          command.response_class = Google::Apis::AdmobV1::ListAdUnitsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the apps under the specified AdMob account.
        # @param [String] parent
        #   Required. Resource name of the account to list apps for. Example: accounts/pub-
        #   9876543210987654
        # @param [Fixnum] page_size
        #   The maximum number of apps to return. If unspecified or 0, at most 10,000 apps
        #   will be returned. The maximum value is 20,000; values above 20,000 will be
        #   coerced to 20,000.
        # @param [String] page_token
        #   The value returned by the last `ListAppsResponse`; indicates that this is a
        #   continuation of a prior `ListApps` call, and that the system should return the
        #   next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1::ListAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1::ListAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_apps(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apps', options)
          command.response_representation = Google::Apis::AdmobV1::ListAppsResponse::Representation
          command.response_class = Google::Apis::AdmobV1::ListAppsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates an AdMob mediation report based on the provided report specification.
        # Returns result of a server-side streaming RPC. The result is returned in a
        # sequence of responses.
        # @param [String] parent
        #   Resource name of the account to generate the report for. Example: accounts/pub-
        #   9876543210987654
        # @param [Google::Apis::AdmobV1::GenerateMediationReportRequest] generate_mediation_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1::GenerateMediationReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1::GenerateMediationReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_mediation_report(parent, generate_mediation_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/mediationReport:generate', options)
          command.request_representation = Google::Apis::AdmobV1::GenerateMediationReportRequest::Representation
          command.request_object = generate_mediation_report_request_object
          command.response_representation = Google::Apis::AdmobV1::GenerateMediationReportResponse::Representation
          command.response_class = Google::Apis::AdmobV1::GenerateMediationReportResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates an AdMob Network report based on the provided report specification.
        # Returns result of a server-side streaming RPC. The result is returned in a
        # sequence of responses.
        # @param [String] parent
        #   Resource name of the account to generate the report for. Example: accounts/pub-
        #   9876543210987654
        # @param [Google::Apis::AdmobV1::GenerateNetworkReportRequest] generate_network_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1::GenerateNetworkReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1::GenerateNetworkReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_network_report(parent, generate_network_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/networkReport:generate', options)
          command.request_representation = Google::Apis::AdmobV1::GenerateNetworkReportRequest::Representation
          command.request_object = generate_network_report_request_object
          command.response_representation = Google::Apis::AdmobV1::GenerateNetworkReportResponse::Representation
          command.response_class = Google::Apis::AdmobV1::GenerateNetworkReportResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
