class ConsultsController < ApplicationController
  def index
      @consults = current_user.consults
  end

    def show
      @consult = Consult.find(params[:id])
    end

    def new
      @consults = Consult.new
    end

    def without_news
      flash[:notice] = ''
    end

    def send_error
      flash[:notice] = @consult.errors.full_messages
    end

    def create
      consults = Consult.new(consults_params)
      consults.medic = current_user

      begin
        consults.save!
        without_news
        redirect_to consults
      rescue ActiveRecord::RecordInvalid
        send_error
        render 'new'
      end
    end

    def update
      @consults = Consult.find(params[:id])

      begin
        @consults.update!(consults_params)
        without_news
        redirect_to @consults
      rescue ActiveRecord::RecordInvalid
        send_error
        render 'edit'
      end
    end

    def destroy
      @consults = Consult.find(params[:id])
      @consults.destroy
      redirect_to consults_path
    end

    def edit
      @consults = Consult.find(params[:id])
    end

    private
    def consults_params
      params.require(:consult).permit(:coverage, :description)
    end

end
