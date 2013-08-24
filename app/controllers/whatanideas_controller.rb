class WhatanideasController < ApplicationController
  before_action :set_whatanidea, only: [:show, :edit, :update, :destroy]

  # GET /whatanideas
  # GET /whatanideas.json
  def index
    @whatanideas = Whatanidea.all
  end

  # GET /whatanideas/1
  # GET /whatanideas/1.json
  def show
  end

  # GET /whatanideas/new
  def new
    @whatanidea = Whatanidea.new
  end

  # GET /whatanideas/1/edit
  def edit
  end

  # POST /whatanideas
  # POST /whatanideas.json
  def create
    @whatanidea = Whatanidea.new(whatanidea_params)

    respond_to do |format|
      if @whatanidea.save
        format.html { redirect_to @whatanidea, notice: 'Whatanidea was successfully created.' }
        format.json { render action: 'show', status: :created, location: @whatanidea }
      else
        format.html { render action: 'new' }
        format.json { render json: @whatanidea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whatanideas/1
  # PATCH/PUT /whatanideas/1.json
  def update
    respond_to do |format|
      if @whatanidea.update(whatanidea_params)
        format.html { redirect_to @whatanidea, notice: 'Whatanidea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @whatanidea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whatanideas/1
  # DELETE /whatanideas/1.json
  def destroy
    @whatanidea.destroy
    respond_to do |format|
      format.html { redirect_to whatanideas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whatanidea
      @whatanidea = Whatanidea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whatanidea_params
      params.require(:whatanidea).permit(:name, :address, :description, :picture)
    end
end
