class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: %i[show edit update destroy]

  # GET /enrollments
  def index
    @enrollments = Enrollment.all
  end

  # GET /enrollments/1
  def show; end

  # GET /enrollments/new
  def new
    @enrollment = Enrollment.new
    @enrollment.build_person
  end

  # GET /enrollments/1/edit
  def edit; end

  # POST /enrollments
  def create
    @enrollment = Enrollment.new(enrollment_params)

    if @enrollment.save
      redirect_to @enrollment, notice: 'Enrollment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /enrollments/1
  def update
    if @enrollment.update(enrollment_params)
      redirect_to @enrollment, notice: 'Enrollment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /enrollments/1
  def destroy
    @enrollment.destroy
    redirect_to enrollments_url, notice: 'Enrollment was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_enrollment
    @enrollment = Enrollment.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def enrollment_params
    params.require(:enrollment).permit(
      :person_id,
      :training_session_id,
      person_attributes: %i[
        id
        name
        birth
        registry_number
        integration_id
      ]
    )
  end
end
