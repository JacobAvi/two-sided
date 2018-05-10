class TripRequestsController < ApplicationController
    before_action :set_trip_request, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:show, :edit, :update, :destroy, :create]
    # GET /trip_requests
    # GET /trip_requests.json
    def index
      @trip_requests = TripRequest.all
    end
  
    # GET /trip_requests/1
    # GET /trip_requests/1.json
    def show
    end
  
    # GET /trip_requests/new
    def new
        @trip_id = params[:trip_id]
        @trip_request = TripRequest.new
    end
  
    # GET /trip_requests/1/edit
    def edit
    end
  
    # POST /trip_requests
    # POST /trip_requests.json
    def create
        @trip_request = TripRequest.new(trip_request_params)
        @trip_request.user_id = current_user.id
  
      respond_to do |format|
        if @trip_request.save
          format.html { redirect_to @trip_request, notice: 'TripRequest request was successfully created.' }
          format.json { render :show, status: :created, location: @trip_request }
        else
          format.html { render :new }
          format.json { render json: @trip_request.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /trip_requests/1
    # PATCH/PUT /trip_requests/1.json
    def update
      respond_to do |format|
        if @trip_request.update(trip_params)
          format.html { redirect_to @trip_request, notice: 'TripRequest was successfully updated.' }
          format.json { render :show, status: :ok, location: @trip_request }
        else
          format.html { render :edit }
          format.json { render json: @trip_request.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /trip_requests/1
    # DELETE /trip_requests/1.json
    def destroy
      @trip_request.destroy
      respond_to do |format|
        format.html { redirect_to trips_url, notice: 'TripRequest was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_trip_request
        @trip_request = TripRequest.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def trip_request_params
        params.require(:trip_request).permit(:pickup_address, :dropoff_address, :trip_id)
      end
  end
  