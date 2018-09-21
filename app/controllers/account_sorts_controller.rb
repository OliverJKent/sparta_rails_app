class AccountSortsController < ApplicationController
  before_action :set_account_sort, only: [:show, :edit, :update, :destroy]

  # GET /account_sorts
  # GET /account_sorts.json
  def index
    @account_sorts = AccountSort.all
  end

  # GET /account_sorts/1
  # GET /account_sorts/1.json
  def show
  end

  # GET /account_sorts/new
  def new
    @account_sort = AccountSort.new
  end

  # GET /account_sorts/1/edit
  def edit
  end

  # POST /account_sorts
  # POST /account_sorts.json
  def create
    @account_sort = AccountSort.new(account_sort_params)

    respond_to do |format|
      if @account_sort.save
        format.html { redirect_to @account_sort, notice: 'Account sort was successfully created.' }
        format.json { render :show, status: :created, location: @account_sort }
      else
        format.html { render :new }
        format.json { render json: @account_sort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_sorts/1
  # PATCH/PUT /account_sorts/1.json
  def update
    respond_to do |format|
      if @account_sort.update(account_sort_params)
        format.html { redirect_to @account_sort, notice: 'Account sort was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_sort }
      else
        format.html { render :edit }
        format.json { render json: @account_sort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_sorts/1
  # DELETE /account_sorts/1.json
  def destroy
    @account_sort.destroy
    respond_to do |format|
      format.html { redirect_to account_sorts_url, notice: 'Account sort was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_sort
      @account_sort = AccountSort.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_sort_params
      params.require(:account_sort).permit(:sort)
    end
end
