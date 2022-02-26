{{- define "boat-demo.dockerDefault" -}}
dockerStrategy:
  dockerfilePath: Dockerfile
type: Docker
{{- end -}}

{{- define "boat-demo.dockerIS" -}}
dockerStrategy:
  dockerfilePath: Dockerfile
  from:
    kind: ImageStreamTag
    name: python:3.8-ubi8
    namespace: openshift
type: Docker
{{- end -}}
