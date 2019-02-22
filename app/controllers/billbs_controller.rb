class BillbsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]

  def index
    @billbs = Billb.all
  end

  def show 
  end

  def edit
    render partial: "form"
  end

  def update
    if @billb.update(billb_params)
      redirect_to billbs_path
    else
      render :edit
    end
  end

  def new
    @billb = Billb.new
    render partial: "form"
  end

  def create
    @billb = Billb.new(billb_params)
    if @billb.save
      redirect_to billbs_path
    else
      render :new
    end
  end

  def destroy
    @billb.destroy
    redirect_to billbs_path
  end

private
  def set_params
    @billb = Billb.find(params[:id])
  end

  def billb_params
    params.require(:billb).permit(:name, :genre)
  end

end

