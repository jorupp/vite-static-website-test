// based on:
//   https://learn.microsoft.com/en-us/azure/templates/microsoft.web/staticsites?pivots=deployment-language-bicep
//   https://www.aaron-powell.com/posts/2022-06-29-deploy-swa-with-bicep/


@description('The name of the function app that you wish to create.')
param name string
param location string = resourceGroup().location
@allowed([ 'Free', 'Standard' ])
param sku string = 'Free'

resource swa_resource 'Microsoft.Web/staticSites@2021-01-15' = {
  name: name
  location: location
  tags: null
  properties: {}
  sku: {
      name: sku
      size: sku
  }
}
