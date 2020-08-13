module UsersHelper
  def gender_view(type)
    case type
    when 1
       "男"
    when 2
      "女"
    when 3
      "その他"
    else
      puts "非表示"
    end
  end

  # def choose_new_or_edit
  #   if action_name == 'new' || action_name == 'create'
  #     confirm_users_path
  #   elsif action_name == 'edit'
  #     users_path
  #   end
  # end
end
