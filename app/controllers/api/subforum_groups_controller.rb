class Api::SubforumGroupsController < Api::ApiController
  load_and_authorize_resource :subforum_group

  def index
    @subforum_groups = @subforum_groups.includes(:subforums)
  end
end
