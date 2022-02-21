$rg = "aaarmdemo4458-parameters-RG"
New-AzResourceGroup -Name $rg -Location northeurope -Force 

New-AzResourceGroupDeployment  `
    -Name 'storage-demo-deployment-1' `
    -ResourceGroupName $rg `
    -TemplateFile 'armdemostorage.json' `
    -TemplateParameterFile '.\armdemostorage.parameters.json'

