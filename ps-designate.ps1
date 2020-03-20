# 上記、cloudshell上の手順
# リソースグループの作成
# gitに送信

$rg = New-AzResourceGroup -Name “AADC” -Location “JapanEast”

# ARMテンプレートでリソースデプロイ
# 事前に２つのJSONファイルをcloudshell上にアップロードして、そこをカレントディレクトリにして以下のコマンド実行

New-AzResourceGroupDeployment -ResourceGroupName $rg.ResourceGroupName `
-TemplateFile “vm-deploy.json” `
-TemplateParameterFile “vm-parameters.json”