{{- define "service" }}
apiVersion: v1
kind: Service
metadata:
  creationTimestamp: null
  labels:
    app: testing123-asdfase
    backstage.io/kubernetes-id: testing123-asdfase
    slot: {{ .slot }}
  name: testing123-asdfase-{{ .slot }}
spec:
  ports:
  - name: 8080-8080
    port: 8080
    protocol: TCP
    targetPort: 8080
  selector:
    slot: {{ .slot }}
{{- end }}
