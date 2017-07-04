Login-AzureRmAccount
New-AzureRmResourceGroup -Name Testing -Location "australiaeast"
$buildparams = @{"storageNamePrefix" = "tesintg"}

New-AzureRmResourceGroupDeployment -Name "Testing" -ResourceGroupName Testing -TemplateFile .\azuredeploy.json -TemplateParameterObject  $buildparams