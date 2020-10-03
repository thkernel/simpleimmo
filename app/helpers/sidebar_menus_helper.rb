module SidebarMenusHelper

    def sidebar_menu 
        if current_user.superuser?
            render "layouts/partials/dashboard/navs/superuser-nav"
        elsif current_user.admin?
            render "layouts/partials/dashboard/navs/admin-nav"
        elsif current_user.user?
            render "layouts/partials/dashboard/navs/user-nav"
       



        end

    end

end