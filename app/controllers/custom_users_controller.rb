class CustomUsersController < ApplicationController
	before_action :authenticate_user!

    layout "dashboard"
    def index 
        @users = User.all
    end
    def new
		
		@user = User.new
	end
    # GET /users/1
    # GET /users/1.json
	def show
		
    end

    # GET /users/1/edit
    def edit
    	@roles = Role.where.not(name: "Superadmin")
    end

    def create
		@user = User.new(user_params)
		#@user.created_by = current_user.id

      	respond_to do |format|
        	if @user.save
          		

				format.html { redirect_to all_users_path, notice: 'User was successfully created.' }
				format.json { render :show, status: :created, location: @contributor }
				format.js 
		  

			  
        	else
				format.html { render :new }
				format.json { render json: @user.errors, status: :unprocessable_entity }
				format.js 
        	end
      	end
    end

    def delete
    	@user = User.find(params[:id])
    end

    def get_disable
        @user = User.find(params[:id]) if params[:id].present?
     
	end
	
    def post_disable
	  	@user = User.find(params[:id]) if params[:id].present?
	  
      	respond_to do |format|
        	if @user.update_attributes(status: 'disable')
         		@users = User.find_by_created_by(current_user).where.not(id: current_user)
        
				format.html { redirect_to @user, notice: 'User was successfully updated.' }
				format.json { render :show, status: :ok, location: @user }
				format.js
        
				# Send mail to user.
				#url = user_session_url
				#UserMailer.disable_user_mail(@user.email, @user.password, url).deliver_now
			else
				format.html { render :edit }
				format.json { render json: @user.errors, status: :unprocessable_entity }
				format.js
			end
		end
   
    end

    def get_enable
    	@user = User.find(params[:id]) if params[:id].present?
   
	end
	
	# Enable user account.
  	def post_enable
		@user = User.find(params[:id]) if params[:id].present?
		respond_to do |format|
      		if @user.update_attributes(status: 'enable')
				@users = User.find_by_created_by(current_user).where.not(id: current_user)
			
				format.html { redirect_to @user, notice: 'User was successfully updated.' }
				format.json { render :show, status: :ok, location: @user }
				format.js
      
				# Send mail to user.
				if @user.receives_notifications == true && @user.status =='enable'
					url = user_session_url
					UserMailer.enable_user_mail(@user.email, @user.password, url).deliver_now
				end

				Thread.new do
					Rails.application.executor.wrap do
					  # your code here
					end
				  end
			  
			else
				format.html { render :edit }
				format.json { render json: @user.errors, status: :unprocessable_entity }
				format.js
			end
      	end
 
  	end

    

	def destroy
    	@users = User.all
    
    	if @user.destroy
    		@users = User.find_by_created_by(current_user).where.not(id: current_user)
			respond_to do |format|
				format.html { redirect_to all_users_path, notice: "L'utilisateur a été supprimer avec succès!" }
				format.json { head :no_content }
				#format.js
		
				# Send mail to user.
				if @user.receives_notifications == true && @user.status =='enable'
					url = user_session_url
					Thread.new do
						Rails.application.executor.wrap do
							UserMailer.delete_user_mail(@user.email, @user.password, url).deliver_now
						end 
					end
				end
		
			end
		end

 	end

   	

    # # PATCH/PUT /users/1
    # # PATCH/PUT /users/1.json
    def update
		respond_to do |format|
			
			if params[:user][:password].blank? #&& params[:user][:password_confirmation].blank?
				params[:user].delete(:password)
				params[:user].delete(:password_confirmation)
			end

			if @user.update(user_params)
				@users = User.find_by_created_by(current_user).where.not(id: current_user)
				
				format.html { redirect_to all_users_path, notice: 'User was successfully updated.' }
				format.json { render :show, status: :ok, location: @user }
				format.js
			

		
				  
				# Send mail to user.
				if @user.receives_notifications == true && @user.status =='enable'

					url = user_session_url
					Thread.new do
						Rails.application.executor.wrap do
							UserMailer.edit_user_mail(@user.email, @user.password, url).deliver_now
						end
					end
				end
				  
				
			else
				format.html { render :edit }
				format.json { render json: @user.errors, status: :unprocessable_entity }
				format.js
			end
      	end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
      if !@user.nil?
        return @user
        
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password,:password_confirmation)
    end

end