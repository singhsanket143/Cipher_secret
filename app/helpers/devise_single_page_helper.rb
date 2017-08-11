module DeviseSinglePageHelper
  # def devise_error_messages_for_same_page(given_resource)
  #   return "" if given_resource.errors.empty?
  #
  #   messages = given_resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
  #   sentence = I18n.t("errors.messages.not_saved",
  #                     count: given_resource.errors.count,
  #                     resource: given_resource.class.model_name.human.downcase)
  #
  #   html = <<-HTML
  # <div id="error_explanation">
  #   <h2>#{sentence}</h2>
  #   <ul>#{messages}</ul>
  # </div>
  #   HTML
  #
  #   html.html_safe
  # end
  #
  # def sign_up_user
  #   @sign_up_user ||= User.new(username: 'su')
  # end
  #
  # def sign_in_user
  #   @sign_in_user ||= User.new
  # end
end
