class MessagesController < ApplicationController
  before_action :set_message, only: %i[ show edit update destroy upvote downvote vote ]

  # GET /messages or /messages.json
  def index
    @messages = Message.all
  end

  def vote
    case params[:type]
    when 'upvote'
      @message.upvote!(current_user)
    when 'downvote'
      @message.downvote!(current_user)
    else
      return redirect_to request.url, alert: "no such type"
    end

    respond_to do |format|
      format.html do
        redirect_to @message
      end
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(@message, partial: "messages/message", locals: { message: @message })
      end
    end
  end

  # def upvote
  #   @message.upvote!(current_user)

  #   respond_to do |format|
  #     format.html do
  #       redirect_to @message
  #     end
  #     format.turbo_stream do
  #       render turbo_stream: turbo_stream.replace(@message, partial: "messages/message", locals: { message: @message })
  #     end
  #   end
  # end

  # def downvote
  #   @message.downvote!(current_user)

  #   respond_to do |format|
  #     format.html do
  #       redirect_to @message
  #     end
  #     format.turbo_stream do
  #       render turbo_stream: turbo_stream.replace(@message, partial: "messages/message", locals: { message: @message })
  #     end
  #   end
  # end

  # GET /messages/1 or /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages or /messages.json
  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to message_url(@message), notice: "Message was successfully created." }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1 or /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to message_url(@message), notice: "Message was successfully updated." }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1 or /messages/1.json
  def destroy
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url, notice: "Message was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.require(:message).permit(:body)
    end
end
