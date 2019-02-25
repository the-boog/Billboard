class BillbsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]

  def index
    @billbs = current_user.billbs
  end

  def show 
    @songs = Song.where(billb_id: @billb)
  end

  def edit
    render "form"
  end

  def update
    if @billb.update(billb_params)
      flash[:success] = "Billboad Updated"
      redirect_to billbs_path
    else
      flash[:error] = "error #{@billb.errors.full_messages.join('\n')}"
      render :edit
    end
  end

  

  def new
    @billb = Billb.new
    render "form"
  end

  def create
    @billb = current_user.billbs.new(billb_params)
    if @billb.save
      flash[:success] = "Billboad created"
      redirect_to billbs_path
    else
      flash[:error] = "error #{@billb.errors.full_messages.join('\n')}"
      render :new
    end
  end

  def destroy
    @billb.destroy
    redirect_to billbs_path
  end

private
  def set_params
    @billb = current_user.billbs.find(params[:id])
  end

  def billb_params
    params.require(:billb).permit(:name, :genre)
  end

end

