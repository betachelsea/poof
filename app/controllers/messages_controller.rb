class MessagesController < ApplicationController
    def index
    end

    def show
    end

    # 新規作成フォーム
    def new
        @message = Message.new(message: "test")
    end

    def edit
    end

    def create
    end

    def update
    end

    def destroy
    end

end
