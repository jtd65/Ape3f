class TermCoursesController < ApplicationController
  before_action :set_term_course, only: [:show, :edit, :update, :destroy]

  # GET /term_courses
  # GET /term_courses.json
  def index
    @term_courses = TermCourse.all
  end

  # GET /term_courses/1
  # GET /term_courses/1.json
  def show
  end

  # GET /term_courses/new
  def new
    @term_course = TermCourse.new
  end

  # GET /term_courses/1/edit
  def edit
  end

  # POST /term_courses
  # POST /term_courses.json
  def create
    @term_course = TermCourse.new(term_course_params)

    respond_to do |format|
      if @term_course.save
        format.html { redirect_to @term_course, notice: 'Term course was successfully created.' }
        format.json { render :show, status: :created, location: @term_course }
      else
        format.html { render :new }
        format.json { render json: @term_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /term_courses/1
  # PATCH/PUT /term_courses/1.json
  def update
    respond_to do |format|
      if @term_course.update(term_course_params)
        format.html { redirect_to @term_course, notice: 'Term course was successfully updated.' }
        format.json { render :show, status: :ok, location: @term_course }
      else
        format.html { render :edit }
        format.json { render json: @term_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /term_courses/1
  # DELETE /term_courses/1.json
  def destroy
    @term_course.destroy
    respond_to do |format|
      format.html { redirect_to term_courses_url, notice: 'Term course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_term_course
      @term_course = TermCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def term_course_params
      params.require(:term_course).permit(:name)
    end
end
