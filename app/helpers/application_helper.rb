module ApplicationHelper

  def button_style_bg_blue
    "bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-md focus:shadow-outline"
  end

  def border_line
    "block border border-black rounded-md px-4 py-1 focus:shadow-outline"
  end

  def dog_profile_input?
    controller_name == "dogs" && (action_name == "new" || action_name == "create")
  end

  def user_profile_input?
    controller_name == "user_profiles" && (action_name == "new" || action_name == "create")
  end
end
