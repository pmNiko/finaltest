class ConsultsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  after_action :verify_authorized, :except => :index
  def index
    @consults = Consult
    .all
    .limit(10)
    .order(created_at: :desc)
  end

    def show
      @consult = Consult.find(params[:id])
      authorize @consult
    end

    def new
      authorize Consult
      @consults = Consult.new
    end

    def create
      consults = Consult.new(consults_params)
      consults.medic = current_user
      authorize @consult
      begin
        consults.save!
        #without_news
        redirect_to consults
      rescue ActiveRecord::RecordInvalid
        send_error
        render 'new'
      end
    end

    def update
      @consults = Consult.find(params[:id])
      authorize @consult
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
      authorize @consult
      @consults.destroy
      redirect_to consults_path
    end

    def edit
      @consults = Consult.find(params[:id])
      authorize @consult
    end

    private
    def consults_params
      params.require(:consult).permit(:coverage, :description)
    end

    def send_error
      flash[:notice] = @consult.errors.full_messages
    end

end
