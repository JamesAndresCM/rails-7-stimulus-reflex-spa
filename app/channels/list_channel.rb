class ListChannel < ApplicationCable::Channel
  def subscribed
    list = List.find(params[:list_id])
    stream_for list if list
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
