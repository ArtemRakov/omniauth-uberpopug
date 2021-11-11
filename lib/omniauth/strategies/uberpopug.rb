require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Uberpopug < OmniAuth::Strategies::OAuth2
      option :name, :uberpopug

      option :client_options, {
        site: 'http://206.81.22.88:3000/',
        authorize_url: 'http://206.81.22.88:3000/oauth/authorize'
      }

      uid { raw_info['public_id'] }

      info do
        {
          email: raw_info['email'],
          full_name: raw_info['full_name'],
          position: raw_info['position'],
          state: raw_info['state'],
          role: raw_info['role'],
          public_id: raw_info['public_id']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/account').parsed
      end
    end
  end
end
