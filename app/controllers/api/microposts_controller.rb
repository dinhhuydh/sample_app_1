class Api::MicropostsController < Api::ApiController
  def show
    @micropost = Micropost.first
    respond_with(@micropost)
  end
end
