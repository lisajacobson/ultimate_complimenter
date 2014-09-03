class NotificationsController < ApplicationController

  def new
    @notification = Notification.new
  end

  def create
    @notification = Notification.new(notification_params)

    @notification.text
    # Do some stuff that checks whether the Notification has
    # the info you need, then sends it! Otherwise, display errors
    # to the user!

    redirect_to new_notification_path
  end

  private
  def notification_params
    params.permit(:to_number)
  end

end