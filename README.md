# Validated Pattern: Vessel Identification

Based on the upstream repository by redhat-naps-da group: [boat-demo](https://github.com/redhat-naps-da/boat-demo)

## This pattern is a work in progress

#### Required Operators:
- opendatahub

#### Example Subscription
```yaml
apiVersion: operators.coreos.com/v1alpha1
kind: Subscription
metadata:
  labels:
    operators.coreos.com/opendatahub-operator.openshift-operators: ''
  name: opendatahub-operator
  namespace: openshift-operators
spec:
  channel: stable
  installPlanApproval: Automatic
  name: opendatahub-operator
  source: community-operators
  sourceNamespace: openshift-marketplace
  startingCSV: opendatahub-operator.v1.1.2
```

### Application Makeup:
1. boat-demo-notebook-image
2. s2i-ubi8-py38-opengl
3. boat-detect
4. boat-identify
5. boat-group

The demo-notebook-image creates an image with the jupyter notebooks that are in the root of the github
project. The s2i-ubi8-py38-opengl image is built with opengl.

### Boat Application
Each of the boat applications create the following resources:
- buildconfig
- imagestream
- deployment
- service
