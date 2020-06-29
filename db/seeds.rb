# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Capistrano-rails-collection cammands
#cap production rails:rake:log:clear
#cap production rails:rake:tmp:clear
#cap production rails:rake:db:drop
#cap production rails:rake:db:reset
#cap production rails:rake:db:setup
#cap production rails:rake:db:seed
#cap production rails:rake:db:migrate
#cap production rails:rake:db:rollback

unless Role.all.present?
    roles = Role.create(
        [
            {name: "superuser"},
            {name: "Administrateur"},
            {name: "Utilisateur"},
            {name: "Administration"},
            {name: "Agent"},
            {name: "Caissier"},
            {name: "Comptable"},
            {name: "Sécretaire"}
          


        ])
else
    roles = Role.all

end

# Services
unless Service.all.present?
    services = Service.create(
        [
            {name: "Administration"},
            {name: "Sécretariat"},
            {name: "Comptabilité"}

        ])
else
    services = Service.all

end


# Users
unless User.all.present?
    users = User.create([
        {login: "superuser",  email: "superuser@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id: Role.find_by(name: "superuser").id, service_id: Service.find_by(name: "Administration").id},
        {login: "administrateur",  email: "administrateur@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id: Role.find_by(name: "Administrateur").id , service_id: Service.find_by(name: "Administration").id},
        {login: "secretaire",  email: "secretaire@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id: Role.find_by(name: "Sécretaire").id,  service_id: Service.find_by(name: "Sécretariat").id},

    
    ])
else   
    users = User.all
end





unless Profile.all.present?
    profile = Profile.create([
        {
            first_name: "Amos", 
            last_name: "DEMBELE",
            phone: "00000000",
            user_id: users.first.id
        },
        {
            first_name: "Alassane", 
            last_name: "BABY",
            phone: "11111111",
            user_id: users.last.id
        }
    
    ])

end



unless City.all.present?
    cities = City.create([
        {
            name: "Bamako", 
            user_id: users.first.id
        },
        {
            name: "Kayes", 
            user_id: users.first.id
        },
        {
            name: "Koulikoro", 
            user_id: users.first.id
        },
        {
            name: "Sikasso", 
            user_id: users.first.id
        },
        {
            name: "Ségou", 
            user_id: users.first.id
        },
        {
            name: "Mopti", 
            user_id: users.first.id
        },
        {
            name: "Tombouctou", 
            user_id: users.first.id
        },
        {
            name: "Gao", 
            user_id: users.first.id
        },
        {
            name: "Kidal", 
            user_id: users.first.id
        }
    
    ])

end

unless Currency.all.present?
    currencies = Currency.create([
        {
            symbol: "F CFA", 
            iso_code: "XOF",
            user_id: users.first.id
        }
    
    ])

end

unless Tax.all.present?
    taxes = Tax.create([
        {
            name: "Taxe foncière 10%", 
            rate: 10,
            user_id: users.first.id
        },
        {
            name: "Taxe sur loyer 18%", 
            rate: 18,
            user_id: users.first.id
        },
        {
            name: "TVA 18%", 
            rate: 18,
            user_id: users.first.id
        }
    
    ])

end



# Property type
unless PropertyType.all.present?
    property_types = PropertyType.create(
        [
            {name: "Appartement", user_id: users.first.id},
            {name: "Boutique", user_id: users.first.id},
            {name: "Parking", user_id: users.first.id},
            {name: "Magasin", user_id: users.first.id},
            {name: "Entrepôt", user_id: users.first.id},


        ])
else
    property_types = PropertyType.all

end


# Tenant type
unless TenantType.all.present?
    tenant_types = TenantType.create(
        [
            {name: "Particulier", user_id: users.first.id},
            {name: "Société", user_id: users.first.id},
            {name: "Autres", user_id: users.first.id}

        ])
else
    tenant_types = TenantType.all

end

# Landlord type
unless LandlordType.all.present?
    landlord_types = LandlordType.create(
        [
            {name: "Particulier", user_id: users.first.id},
            {name: "Société", user_id: users.first.id},
            {name: "Autres", user_id: users.first.id}
        ])
else
    landlord_types = LandlordType.all

end


unless Organization.all.present?
    organization = Organization.create([
        {
            name: "Agence Immobilière Soroma"
            
        }
    
    ])

end
