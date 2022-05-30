https://www.deployhq.com/support/common-repository-errors/no-url-found-for-submodule

```bash
git submodule status

cat > SUBMODULES << EOF
[submodule "cft-scorecard-run/cloud-foundation-toolkit"] 
  path = cft-scorecard-run/cloud-foundation-toolkit
  url = git://github.com/GoogleCloudPlatform/cloud-foundation-toolkit
EOF

```
