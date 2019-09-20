#!/bin/bash

#tree -v -L 3 | awk 'BEGIN{print "```bash"} {print} END{print "```"}' > README.md
tree -v -L 3 -H 'https://github.com/opsxin/k8s-yaml/blob/master' | awk 'BEGIN{print "<h4>K8S-参考</h4>"} /─/{print} /directories/{print "<br/>" $0}' > README.md
