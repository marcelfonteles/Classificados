class Members::MembersController < ApplicationController
    before_action :authenticate_member!
    def index
        @member = current_member
    end
end
