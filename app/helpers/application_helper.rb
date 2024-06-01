module ApplicationHelper

  def button_style_bg_blue
    "bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-md focus:shadow-outline"
  end

  def border_line
    "block border border-black rounded-md px-4 py-1 focus:shadow-outline"
  end

  def profile_input_page?
    controller_name == "dogs" && action_name == "profile"
  end
end
