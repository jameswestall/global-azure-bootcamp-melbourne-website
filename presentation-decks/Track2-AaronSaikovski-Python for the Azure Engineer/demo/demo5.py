import os

import azure_helper.resource_client_helper as res_client_helper

# ******************************************************************************** #

# cleanup

# Retrieve subscription ID from environment variable.
subscription_id = os.environ["AZURE_SUBSCRIPTION_ID"]

# Obtain the management object for resources.
resource_client = res_client_helper.get_resource_client(subscription_id)

# Retrieve the list of resource groups
group_list = resource_client.resource_groups.list()

for group in list(group_list):
    poller = resource_client.resource_groups.begin_delete(group.name)
    result = poller.result()

print("Done!")
