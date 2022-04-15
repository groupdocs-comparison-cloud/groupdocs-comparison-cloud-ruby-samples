# Import modules
require './Common.rb'

# This example demonstrates how to get metered license consumption information
class GetConsumptionCredits
    def self.Run()        
        licenseApi = GroupDocsComparisonCloud::LicenseApi.from_config($config)
        result = licenseApi.get_consumption_credit()
        puts("Credits: " + result.credit.to_s)
        puts("Quantity: " + result.quantity.to_s)
    end
end