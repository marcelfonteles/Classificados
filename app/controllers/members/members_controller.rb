class Members::MembersController < ApplicationController
    before_action :authenticate_member!
    layout 'site'
    def index
        @member = current_member
    end
end
