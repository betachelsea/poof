class MessagesController < ApplicationController
    def index
    end

    def show
        @message = Message.find(params[:id])
    end

    # 新規作成フォーム
    def new
        @message = Message.new(message: "test")
    end

    def edit
    end

    def create
        permitted_params = params.require(:message)
                                 .permit(:message, :limit, :opendate)
        @message = Message.new(permitted_params);
        if @message.save
            redirect_to @message, notice: "メッセージを登録しました。"
        else
            render "new"
        end
    end

    def update
    end

    def destroy
    end

end
