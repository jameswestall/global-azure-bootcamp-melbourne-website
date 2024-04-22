"""
Azure ResourceClient Helper
"""

import os

import azure_helper.resource_client_helper as res_client_helper

# ******************************************************************************** #


def main():
    # Retrieve subscription ID from environment variable.
    subscription_id = os.environ["AZURE_SUBSCRIPTION_ID"]

    # Obtain the management object for resources.
    resource_client = res_client_helper.get_resource_client(subscription_id)

    resource_group_name = "PythonAzureDemo3-rg"

    # Get the resource IDs

    # Get the resource IDs
    resource_ids = res_client_helper.get_resource_ids(resource_client, resource_group_name)

    # list resource IDs
    print(resource_ids)


# ******************************************************************************** #

if __name__ == "__main__":
    main()
