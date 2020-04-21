// `src/` shall be included into Jsonnet library path
local acmejobtmpl = import 'letsencrypt-job-template.jsonnet';
local obstmpl = import 'observer-template.jsonnet';
local regjobtmpl = import 'registry-job-template.jsonnet';
local regtmpl = import 'registry-template.jsonnet';

// the following files will be generated by `jsonnet -J src -m . main.jsonnet`
{
  'letsencrypt/letsencrypt-job-template.json': acmejobtmpl {},
  'registry/ocp-template.json': regtmpl {},
  'registry/deploy-registry-job-template.json': regjobtmpl {},
  'observer/ocp-template.json': obstmpl {},
}
