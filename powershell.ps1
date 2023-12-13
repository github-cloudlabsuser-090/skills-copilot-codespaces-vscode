# Login to your Azure account
Connect-AzAccount

# Select your subscription
Select-AzSubscription -SubscriptionId <Your-Subscription-Id>

# Create a resource group
New-AzResourceGroup -Name "MyResourceGroup" -Location "West US"

# Create a storage account
New-AzStorageAccount -ResourceGroupName "MyResourceGroup" -Name "mystorageaccount" -Location "West US" -SkuName "Standard_LRS"