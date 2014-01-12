Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                     :name => "add_menu_item_to_admin_sidebar_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                     :text => %q{<%= configurations_sidebar_menu_item Spree.t("spree_call_me.admin.menu_item"), admin_callback_index_path %>},
                     :disabled => false)

