class EmailAddressesController < ApplicationController
  before_action :set_email_address, only: [:show, :edit, :update, :destroy]

  # GET /email_addresses
  def index
    @email_addresses = EmailAddress.all
  end

  # GET /email_addresses/1
  def show
  end

  # GET /email_addresses/new
  def new
    @email_address = EmailAddress.new(person_id: params[:person_id])
  end

  # GET /email_addresses/1/edit
  def edit
  end

  # POST /email_addresses
  def create
    @email_address = EmailAddress.new(email_address_params)

    if @email_address.save
      redirect_to @email_address.person, notice: 'Email address was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /email_addresses/1
  def update
    if @email_address.update(email_address_params)
      redirect_to @email_address.person, notice: 'Email address was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /email_addresses/1
  def destroy
    person=@email_address.person
    @email_address.destroy
    redirect_to person_path, notice: 'Email address was successfully deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_address
      @email_address = EmailAddress.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def email_address_params
      params.require(:email_address).permit(:address, :person_id)
    end
end
