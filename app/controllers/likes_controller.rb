class LikesController < 
    def create
         Like.create(user_id: current_user.id, post_id: params[:id])
         redirect_to posts_path
       
        if !@like.save
            flash[:notice]=@like.errors.full_messsages.to_sentence
        end    
            redirect_to @like.post
    end
        
    def destroy
        @like =current_user.likes.fined(params[:id])
        post = @like.post
        @like.destroy
        redirect_to post
    end
    
   
end
