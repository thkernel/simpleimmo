module FilterConcern
    include ActiveSupport::Concern 

    def get_landlord
        puts "Les paramètres:#{params[:data]}"
        
        if params[:data].present?
            
            building = Building.find(params[:data])
            puts "BUILDING : #{building.inspect}"
            landlord = Landlord.where(id: building.landlord_id)

        
            puts "LANDLORD : #{landlord.inspect}"
            @landlords = landlord.map{|a| [a.full_name, a.id ]}#.insert(0, "Sélectionner")
        else
            landlords = Landlord.all
            @landlords = landlords.map{|a| [a.full_name, a.id ]}.insert(0, "Sélectionner")
        end
    end


    def get_properties
        puts "Les paramètres:#{params[:data]}"
        
        if params[:data].present?
            
            
            properties = Property.where(building_id: params[:data])

        
            puts "PROPERTIES : #{properties.inspect}"
            @properties = properties.map{|a| [a.reference, a.id ]}.insert(0, "Sélectionner")
        else
            properties = Property.all
            @properties = properties.map{|a| [a.reference, a.id ]}.insert(0, "Sélectionner")
        end
    end


    def get_available_properties
        puts "Les paramètres:#{params[:data]}"
        
        if params[:data].present?
            
            
            properties = Property.where(building_id: params[:data]).available

        
            puts "PROPERTIES : #{properties.inspect}"
            @properties = properties.map{|a| [a.reference, a.id ]}.insert(0, "Sélectionner")
        else
            properties = Property.available
            @properties = properties.map{|a| [a.reference, a.id ]}.insert(0, "Sélectionner")
        end
    end

end