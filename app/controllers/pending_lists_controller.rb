class PendingListsController < ApplicationController
  before_action :set_pending_list, only: %i[ show edit update destroy ]

  def index
    @pending_lists = PendingList.all
    @pendings = TodoList.where(done:false)
  end

  def show
  end

  def new
    @pending_list = PendingList.new
  end

  def edit
  end

  def create
    @pending_list = PendingList.new(pending_list_params)
    respond_to do |format|
      if @pending_list.save
        format.html { redirect_to pending_list_url(@pending_list), notice: "Pending list was successfully created." }
        format.json { render :show, status: :created, location: @pending_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pending_list.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pending_list.update(pending_list_params)
        format.html { redirect_to pending_list_url(@pending_list), notice: "Pending list was successfully updated." }
        format.json { render :show, status: :ok, location: @pending_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pending_list.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pending_list.destroy

    respond_to do |format|
      format.html { redirect_to pending_lists_url, notice: "Pending list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_pending_list
      @pending_list = PendingList.find(params[:id])
    end

    def pending_list_params
      params.fetch(:pending_list, {})
    end
end
