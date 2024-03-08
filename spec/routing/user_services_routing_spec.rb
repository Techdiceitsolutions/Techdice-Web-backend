require 'rails_helper'

RSpec.describe UserServicesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/user_services').to route_to('user_services#index')
    end

    it 'routes to #show' do
      expect(get: '/user_services/1').to route_to('user_services#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/user_services').to route_to('user_services#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/user_services/1').to route_to('user_services#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/user_services/1').to route_to('user_services#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/user_services/1').to route_to('user_services#destroy', id: '1')
    end
  end
end
