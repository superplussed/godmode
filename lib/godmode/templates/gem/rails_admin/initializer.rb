RailsAdmin.config do |config|

  config.yell_for_non_accessible_fields = false
  config.main_app_name = ['need4more Admin']
  config.main_app_name.push(Rails.env) unless Rails.env == "production"
  config.current_user_method { current_user }
  config.authorize_with :cancan
  config.audit_with :history, User
  config.total_columns_width = 1400
  config.compact_show_view = false

  config.actions do
    config.actions do
      dashboard do
        statistics false
        pjax false
      end
      index 
      show
      edit
      new 
      export 
      history_index 
      bulk_delete
      # member actions
      delete 
      toggle
    end
  end
end