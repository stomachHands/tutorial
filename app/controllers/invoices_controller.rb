class InvoicesController < ApplicationController

  # GET /invoices/1
  # GET /invoices/1.json
  def show
    # we'll integrate the Invoice details in the Show Purchase screen
    redirect_to purchase_path(params[:purchase_id])
  end

  # GET /invoices/new
  # GET /invoices/new.json
  def new
    @purchase = Purchase.find(params[:purchase_id])
    @invoice = @purchase.invoice
  end

  # GET /invoices/1/edit
  def edit
    @purchase = Purchase.find(params[:purchase_id])
    @invoice = @purchase.build_invoice
  end

  def create
    @purchase = Purchase.find(params[:purchase_id])
    @invoice = @purchase.build_invoice(params[:invoice])

    if @invoice.save
      redirect_to @purchase, :notice => 'Invoice was successfully created'
    else
      render :action => "new"
    end
  end

  # PUT /invoices/1
  # PUT /invoices/1.json
  def update
    @purchase = Purchase.find(params[:purchase_id])
    @invoice = @purchase.invoice

    if @invoice.update_attributes(params[:purchase_id])
      redirect_to @purchase, :notice => 'Invoice was successfully created'
    else
      render :action => "edit"
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
   @purchase = Purchase.find(params[:purchase_id])
   @invoice = @purchase.invoice
   @invoice.destroy

   redirect_to @purchase
 end
end
