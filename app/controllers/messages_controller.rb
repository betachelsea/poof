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
        @message = Message.new(message: 'testだ！',
                              limit: 60,
                              opendate: '2013-10-03')
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
