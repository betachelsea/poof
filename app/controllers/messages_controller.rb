class MessagesController < ApplicationController
    def index
    end

    def deliver
        @message = Message.find(params[:id])
    end

    def show
        @message = Message.find(params[:id])
        @message.assign_attributes(opendate: Time.now)
        if @message.save
            @message
        else
            render "index"
        end
    end

    # 新規作成フォーム
    def new
        @message = Message.new(message: "test")
    end

    def edit
        @message = Message.find(params[:id])
    end

    def create
        permitted_params = params.require(:message)
                                 .permit(:message, :limit)
        @message = Message.new(permitted_params);
        if @message.save
            redirect_to edit_message_path(@message)
        else
            render "new"
        end
    end

    def update
    end

    def destroy
        @message = Message.find(params[:id])
        @message.destroy
        redirect_to :messages, notice: "メッセージを削除しました。"
    end

end
