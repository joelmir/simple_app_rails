class JuridicalPeopleController < ApplicationController
  # GET /juridical_people
  # GET /juridical_people.json
  def index
    @juridical_people = JuridicalPerson.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @juridical_people }
    end
  end

  # GET /juridical_people/1
  # GET /juridical_people/1.json
  def show
    @juridical_person = JuridicalPerson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @juridical_person }
    end
  end

  # GET /juridical_people/new
  # GET /juridical_people/new.json
  def new
    @juridical_person = JuridicalPerson.new
    @accounts = Account.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @juridical_person }
    end
  end

  # GET /juridical_people/1/edit
  def edit
    @juridical_person = JuridicalPerson.find(params[:id])
    @accounts = Account.all
  end

  # POST /juridical_people
  # POST /juridical_people.json
  def create
    @juridical_person = JuridicalPerson.new(params[:juridical_person])

    respond_to do |format|
      if @juridical_person.save
        format.html { redirect_to juridical_people_url, notice: 'Juridical person was successfully created.' }
        format.json { render json: @juridical_person, status: :created, location: @juridical_person }
      else
        format.html { render action: "new" }
        format.json { render json: @juridical_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /juridical_people/1
  # PUT /juridical_people/1.json
  def update
    @juridical_person = JuridicalPerson.find(params[:id])

    respond_to do |format|
      if @juridical_person.update_attributes(params[:juridical_person])
        format.html { redirect_to juridical_people_url, notice: 'Juridical person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @juridical_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juridical_people/1
  # DELETE /juridical_people/1.json
  def destroy
    @juridical_person = JuridicalPerson.find(params[:id])
    @juridical_person.destroy

    respond_to do |format|
      format.html { redirect_to juridical_people_url }
      format.json { head :no_content }
    end
  end
end
