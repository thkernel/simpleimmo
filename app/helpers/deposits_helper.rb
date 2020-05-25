module DepositsHelper
    def deposit_to_name(id)
        Deposit.find(id).name
    end
end
