{{/*
Expand the name of the chart.
*/}}
{{- define "pgpool.name" -}}
{{- print (default .Chart.Name .Values.nameOverride) "-pgpool" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "pgpool.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- print .Values.fullnameOverride "-pgpool" | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- print .Release.Name "-pgpool" | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s-pgpool" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "pgpool.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "pgpool.labels" -}}
helm.sh/chart: {{ include "pgpool.chart" . }}
{{ include "pgpool.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "pgpool.selectorLabels" -}}
app.kubernetes.io/name: {{ include "pgpool.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}












