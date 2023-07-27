class JobsController < ApplicationController
end
def index
      render json: Job.all

end

end
