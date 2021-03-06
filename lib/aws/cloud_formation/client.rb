# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class CloudFormation
    class Client < Core::Client

      AWS.register_autoloads(self, 'aws/cloud_formation/client') do
        autoload :XML, 'xml'
      end

      include Core::ConfiguredClientMethods

      API_VERSION = '2010-05-15'

      # @private
      REQUEST_CLASS = CloudFormation::Request

      configure_client

    end
  end
end
