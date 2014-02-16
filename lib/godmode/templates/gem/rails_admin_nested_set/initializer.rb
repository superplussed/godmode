RailsAdmin.config do |config|
  config.actions do
    nested_set do
      visible do
        bindings[:abstract_model].model_name == "Category"
      end
    end
  end
end