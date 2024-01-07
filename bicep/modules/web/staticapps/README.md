# Static Web Apps Module

A Bicep module which deploys a static web app.

## Details

Creates a static web app with an optional lock.

## Parameters

| Name           | Type     | Required | Description                                                     |
| :------------- | :------: | :------: | :-------------------------------------------------------------- |
| `location`     | `string` | Yes      | The Azure region which the Static Web App will be deployed to.  |
| `name`         | `string` | Yes      | The name of the Static Web App.                                 |
| `sku`          | `object` | No       | Optional. The SKU of the Static Web App. Defaults to Free Tier. |
| `tags`         | `object` | No       | Optional. Resource tags.                                        |
| `resourcelock` | `string` | No       | Optional. Specify the type of resource lock.                    |

## Outputs

| Name         | Type     | Description                                           |
| :----------- | :------: | :---------------------------------------------------- |
| `name`       | `string` | The name of the deployed staticWebApp service.        |
| `resourceId` | `string` | The resource ID of the deployed staticWebApp service. |

## Examples

Please see the [Bicep Tests](test/main.test.bicep) file for examples.