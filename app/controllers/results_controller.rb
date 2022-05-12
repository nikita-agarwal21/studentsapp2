class ResultsController < ApplicationController
    before_action :set_result, only: %i[ show edit update destroy ]

    # GET /students or /students.json
    def index
      @results = Result.all
    end
  
    # GET /students/1 or /students/1.json
    def show
    end
  
    # GET /students/new
    def new
      @result = Result.new
    end
  
    # GET /students/1/edit
    def edit
    end
  
    # POST /students or /students.json
    def create
      @result = Result.new(result_params)
  
      respond_to do |format|
        if @result.save
          format.html { redirect_to result_url(@result), notice: "result was successfully created." }
          format.json { render :show, status: :created, location: @result }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @result.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /students/1 or /students/1.json
    def update
      respond_to do |format|
        if @result.update(result_params)
          format.html { redirect_to result_url(@result), notice: "result was successfully updated." }
          format.json { render :show, status: :ok, location: @resultt }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @result.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /students/1 or /students/1.json
    def destroy
      @result.destroy
  
      respond_to do |format|
        format.html { redirect_to results_url, notice: "result was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_result
        @result = Result.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def result_params
        params.require(:result).permit(:usn, :course_code, :cee_obtained, :see_obtained, :student_id, :course_id)
      end
end
