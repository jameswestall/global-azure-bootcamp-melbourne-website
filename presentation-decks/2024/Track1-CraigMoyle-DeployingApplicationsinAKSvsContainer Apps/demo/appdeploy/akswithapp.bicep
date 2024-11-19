module virtualNetwork 'br/public:avm/res/network/virtual-network:0.1.5' = {
  name: 'virtualNetworkDeployment'
  params: {
    addressPrefixes: [
      '10.1.0.0/16'
    ]
    name: 'aks-vnet-demo'
    location: 'australiaeast'
    subnets: [
      {
        addressPrefix: '10.1.0.0/24'
        name: 'AKSSubnet'
      }
    ]
  }
}

module managedCluster 'br/public:avm/res/container-service/managed-cluster:0.1.3' = {
  name: 'managedClusterDeployment'
  params: {
    name: 'aks-demo'
    location: 'australiaeast'
    managedIdentities: {
      systemAssigned: true
    }
    publicNetworkAccess: 'Enabled'
    enablePrivateCluster: false
    primaryAgentPoolProfile: [
      {
        availabilityZones: [
          '3'
        ]
        count: 1
        enableAutoScaling: true
        maxCount: 3
        maxPods: 30
        minCount: 1
        mode: 'System'
        name: 'systempool'
        osDiskSizeGB: 0
        osType: 'Linux'
        serviceCidr: ''
        type: 'VirtualMachineScaleSets'
        vmSize: 'Standard_DS2_v2'
        vnetSubnetID: virtualNetwork.outputs.subnetResourceIds[0]
        linuxProfile: {
          adminUsername: 'azureuser'
          ssh: {
            publicKeys: [
              {
                keyData: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDit1HPV+VaFj6tpAnPHsTZUBB5OV9zjn4FwsR0SU7kfqrascZCzsfawxPTf5lv17+d1/zsJN63c8JMrOiOvElRkMFMkp0dDGWGqe50vrATXT9EVZ0yXrh0LEJGej1A4nSRA+sYE9dn3V3IiK2xtaZzKDQVjDOO6aSvpxpaY6bSj1X86xGtbwJTEKuBqkCCTlM3YYgq/DWhH5Kks4DGTk2JaPrHVadGJ7QVmOHPuREAt9os/xiGM53NPkplu6WyA8Wf60bYDc/0pMR0BhXfqLwsmgyeRsrE2VxfO5eRfFsD2FKeESCvsQxMYJ+S5mNFoOO7j8AHBadTPNMDcQaRSXH4jbDrvp9Jptnu55s6YSLqHw1LGtmDHxF00G5bN2GsO9+5OepdGeu6767ovTFJMPfDfiCzGn9LBuC8MfDb2IEylkWbrmiw56cMWk54E0HvNH9ylzJVgBO+3K5zNatWa6VMzLudbY2ixEdRlp5CLt9yjbZbJml0IvKbpVo1keYr9vE='
              }
            ]
          }
        }
      }
    ]
  }
}

@secure()
param kubeConfig string

@description('Specifies Kubernetes namespace for the user.')
param namespace string = 'apps'

module kubernetes './aksappdeploy.bicep' = {
  name: 'deployAppToAksUsingBicep'
  params: {
    kubeConfig: kubeConfig
    namespace: namespace
  }
}
