class PortfoliosController < ApplicationController
	before_action :set_portfolio, only: %i[ show edit update destroy ]
	def index
		@portfolio_items = Portfolio.all		
	end

	def angular
		@angular_portfolio_items = Portfolio.angular
	end
	def show
		
	end
	def edit
	end

	def new
		@portfolio_item = Portfolio.new
	end
	def create
	    @portfolio_item = Portfolio.new(portfolio_params)

	    respond_to do |format|
	      if @portfolio_item.save
	        format.html { redirect_to portfolios_path, notice: "Your portfolio was successfully created." }
	      else
	        format.html { render :new, status: :unprocessable_entity }
	      end
	    end
  	end

  	def update
	    respond_to do |format|
	      if @portfolio_item.update(portfolio_params)
	        format.html { redirect_to portfolios_path, notice: "Your portfolio item was successfully updated." }
	      else
	        format.html { render :edit, status: :unprocessable_entity }
	      end
	    end
	end
	def destroy
		#Perform lookup
	 	# @portfolio_item = Portfolio.find(params[:id])	 moved to portfolio_params
		#destroy the record
		@portfolio_item.destroy

		#redicrect
    	respond_to do |format|
		    format.html { redirect_to portfolios_url, notice: "Record was successfully removed." }
  		end
	end

	 def set_portfolio
	 	@portfolio_item = Portfolio.find(params[:id])	
	 end
  	 def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end
end
